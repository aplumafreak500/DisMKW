# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from copy import copy, deepcopy
from ctypes import c_int8
import random
import operator
import array

import configuration




def write_string_to_file(filename, string):
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename))
    with open(os.path.join(filename), 'w') as out:
        out.write(string)


def SignExtendedOffset16(offset):
    if offset & 0x8000:
        return "-" + hex((offset ^ 0xffff)+1)
        #return hex(offset | 0xffff0000)
    return hex(offset)


def SignExtendedOffset12(offset):
    if offset & 0x800:
        return "-" + hex((offset ^ 0xfff)+1)
    return hex(offset)


def AbsSignExtendedOffset16(offset):
    if offset & 0x8000:
        return hex((offset ^ 0xffff)+1)
        #return hex(offset | 0xffff0000)
    return hex(offset)


LabelNames = {}
LabelType = {}

class Label():
    def __init__(self, adr, name, type):
        self.adr = adr
        self.name = name
        self.type = type

LabelAddresses = []

def addLabelAdr(adr, name, type):
    if checkLabelAdr(adr) == "":
        LabelAddresses.append(Label(adr, name, type))
        LabelNames[adr] = name
        LabelType[adr] = type
    return None

def checkLabelAdr(adr):
    if adr in LabelNames:
        return LabelNames[adr]
    return ""
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            return (LabelAddresses[i]).name
    return ""
    """

def getLabelType(adr):
    if adr in LabelType:
        return LabelType[adr]
    return ""
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            return (LabelAddresses[i]).type
    return ""
    """

def getNrOfLabelAddresses():
    return len(LabelNames)
    #return len(LabelAddresses)

def getNthAdr(n):
    #return (LabelNames.keys())[n]
    return (LabelAddresses[n]).adr

def getLabelOfAdr(adr, base_address):
    if adr in LabelNames:
        return LabelNames[adr]
    return hex(adr)[:-1:]

def getBranchLabelOfAdr(adr, base_address):
    if adr in LabelNames:
        return LabelNames[adr]
    return hex(adr)[:-1:]


class SSEQCmd():
    def __init__(self, offset, cmd, par):
        self.offset = offset
        self.cmd = cmd
        self.par = par

SSEQList = []
AddressDict = {}

def addSSEQCmd(offset, cmd, par=0):
    SSEQList.append(SSEQCmd(offset, cmd, par))
    AddressDict[offset] = 1;
    return None

def checkSSEQoffset(offset):
    return AddressDict.has_key(offset)
    """
    for item in SSEQList:
        if item.offset == offset:
            return 1
    return 0
    """
    
def getRegNames(reg):
    #if reg == 1:
    #    return "%sp"
    #elif reg == 2:
    #    return "%rtoc"
    #else:
        return "%r" + str(reg)
    
def getFprNames(reg):
    return "%f" + str(reg)
    
def getCrNames(reg):
    return "%cr" + str(reg)
    
def getCrbNames(reg):
    return str(reg)
    
cmpname = ["w", "d"]
def getCmpName(L):
    return cmpname[L]
    
b_condition = ["ge", "le", "ne", "ns", "lt", "gt", "eq", "so"]
def getBranchCondition(BI, BO):
    return b_condition[((BO & 8) >> 1) + (BI & 3)]
    
b_decr = ["nzf", "zf", "", "", "nzt", "zt", "", "", "nz",  "z",  "", "", "nz",  "z",  "", ""]
def getBranchDecrement(BO):
    return b_decr[BO >> 1]

def getBranchY(BO, bdisp):
    y = (BO & 1)
    if (bdisp < 0):
        y = (y ^ 1) & 1;
    if y != 0:
        return "+"
    else:
        return "-"

def getRc(Rc):
    if Rc == 0:
        return " "
    else:
        return "."

def isBranchAlways(BO, LK):
    if ((BO & 4) == 4) & ((BO & 16) == 16) & (LK == 0): # standard case - no decrement, branch always
        return 1
    return 0
        
def getBC(BI, BO, bdisp, extension):
    string = ""
    if ((BO & 4) == 4): # standard case - no decrement
        if ((BO & 16) == 16): # branch always
            string += "b" + extension + " "
            #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
        else: # Branch conditional
            string += "b" + getBranchCondition(BI, BO) + extension + getBranchY(BO, bdisp) + " "
            if BI >= 4:
                string += "cr" + str(BI >> 2) + ", "
            #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
    else: # // CTR is decremented and checked
        string += "bd" + getBranchDecrement(BO) + extension + getBranchY(BO, bdisp) + " "
        if ((BO & 16) == 0):
            string += hex(BI)[:-1:] + ", "
        #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
    return string

# TBoidLeader::perform((unsigned long, JDrama::TGraphics *))
#.globl perform__11TBoidLeaderFUlPQ26JDrama9TGraphics
#            FuncName = InterpretFunctionName("perform__11TBoidLeaderFUlPQ26JDrama9TGraphics")
# THauntLegManager::THauntLegManager((char const *))
#.globl __ct__16THauntLegManagerFPCc
# SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
# SMS_InitPacket_TwoTevColor(J3DModel *,ushort,_GXTevRegID,_GXColorS10 const *,_GXTevRegID,_GXColorS10 const *)
# https://docs.python.org/2/library/string.html
def checkConstructor(name):
    if name.find("__ct") == 0:
        return (name.split("__",1)[2], 1)
    return (name, 0)

def checkDestructor(name):
    if name.find("__dt") == 0:
        return (name.split("__",1)[2], 1)
    return (name, 0)

def replaceCommon(name):
    return name.replace("_f_", "<f>")

def getFuncName(name):
    if name.find("__") != 0:
        return name.split("__",1)[1]
    return name

def InterpretFunctionName(name):
    string = replaceCommon(name)
    FuncName = getFuncName(name)
    return FuncName

def writeSSEQListToFile(filename_out, filename, base_address, filesize):
    SSEQList.sort(key=operator.attrgetter('offset'))
    output_sseq = ""
    old_offset = base_address
    for item in SSEQList:
        # add .incbins in gaps
        if old_offset != item.offset:
            #.incbin "./baserom/overlay/overlay_0011.bin", 0x14c, 0x221f96c - 0x221f94c
            output_sseq += "\t.incbin \"" + filename + "\", " + hex(old_offset-base_address)[:-1:] + ", " + hex(item.offset)[:-1:] + " - " + hex(old_offset)[:-1:] + "\n"
            old_offset = item.offset+4
        else:
            old_offset = item.offset+4
            
        if getLabelType(item.offset) == "sub":
            #FuncName = InterpretFunctionName("perform__11TBoidLeaderFUlPQ26JDrama9TGraphics")
            #output_sseq += "\n/* " + InterpretFunctionName(getLabelOfAdr(item.offset, base_address)) + " */\n"
            output_sseq += "\n\t.global " + getLabelOfAdr(item.offset, base_address) + "\n"
            output_sseq += getLabelOfAdr(item.offset, base_address) + ": # " + hex(item.offset)[:-1:] + "\n"
        elif getLabelType(item.offset) == "_":
            output_sseq += getLabelOfAdr(item.offset, base_address) + ":\n"
        #output_sseq += hex(item.offset) + ": "
        output_sseq += "\t"
        if item.cmd == "bx":
            target_adr = item.par[0]
            AA = item.par[1]
            LK = item.par[2]
            if (AA == 0) & (LK == 0):
                output_sseq += "b " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
            elif (AA == 1) & (LK == 0):
                output_sseq += "ba " + getBranchLabelOfAdr(target_adr, base_address) + "\n\n"
            elif (AA == 0) & (LK == 1):
                output_sseq += "bl " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
            elif (AA == 1) & (LK == 1):
                output_sseq += "bla " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
        elif item.cmd == "psq_lx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            W = item.par[3]
            I = item.par[4]
            output_sseq += "psq_lx " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + ", " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "ps_sum0":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_sum0 " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "ps_sum1":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_sum1 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_muls0":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_muls0 f" + str(D) + ", f" + str(A) + ", f" + str(C) + "\n"
        elif item.cmd == "ps_muls1":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_muls1 f" + str(D) + ", f" + str(A) + ", f" + str(C) + "\n"
        elif item.cmd == "ps_madds0":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madds0 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_madds1":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madds1 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge00":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge00 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge01":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge01 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge10":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge10 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge11":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge11 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "vmhaddshs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            output_sseq += "vmhaddshs v" + str(D) + ", v" + str(A) + ", v" + str(B) + ", v" + str(C) + "\n"
        elif item.cmd == "ps_sub":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_sub f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_add":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_add f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_mul":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_mul f" + str(D) + ", f" + str(A) + ", f" + str(C) + "\n"
        elif item.cmd == "ps_msub":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_msub f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_madd":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madd f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_nmsub":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_nmsub f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_nmadd":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_nmadd f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_cmpo0":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            Cmd = item.par[4]
            if D == 0:
                output_sseq += ".4byte " + hex(Cmd)[:-1:] + " #"
            output_sseq += "ps_cmpo0 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_neg":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "ps_neg f" + str(D) + ", f" + str(B) + "\n"
        elif item.cmd == "dcbz_l":
            A = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "dcbz_l " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mulli":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "mulli " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "subfic":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "subfic " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "cmpli":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            uimm = item.par[3]
            #output_sseq += "cmpli   " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + hex(uimm) + "\n"
            if crfD == 0:
                output_sseq += "cmpl" + getCmpName(L) + "i " + getRegNames(A) + ", " + hex(uimm) + "\n"
            else:
                output_sseq += "cmpl" + getCmpName(L) + "i " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + hex(uimm) + "\n"
        elif item.cmd == "cmpi":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            simm = item.par[3]
            if crfD == 0:
                output_sseq += "cmp" + getCmpName(L) + "i " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                output_sseq += "cmp" + getCmpName(L) + "i " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addic":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            if (simm & 0x8000) == 0:
                output_sseq += "addic " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                output_sseq += "subic " + getRegNames(D) + ", " + getRegNames(A) + ", " + AbsSignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addic.":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            if (simm & 0x8000) == 0:
                output_sseq += "addic. " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                output_sseq += "subic. " + getRegNames(D) + ", " + getRegNames(A) + ", " + AbsSignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addi":
            d = item.par[0]
            a = item.par[1]
            simm = item.par[2]
            if a == 0:
                output_sseq += "li " + getRegNames(d) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                if (simm & 0x8000) == 0:
                    output_sseq += "addi " + getRegNames(d) + ", " + getRegNames(a) + ", " + SignExtendedOffset16(simm) + "\n"
                else:
                    output_sseq += "subi " + getRegNames(d) + ", " + getRegNames(a) + ", " + AbsSignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addis":
            d = item.par[0]
            a = item.par[1]
            simm = item.par[2]
            if a == 0:
                output_sseq += "lis " + getRegNames(d) + ", " + hex(simm) + "\n"
            else:
                output_sseq += "addis " + getRegNames(d) + ", " + getRegNames(a) + ", " + hex(simm) + "\n"
        elif item.cmd == "bcx": #  (beq)  - beq ADDRESS is really bc 12, 10 ADDRESS
            BO = item.par[0]
            BI = item.par[1]
            target_adr = item.par[2]
            AA = item.par[3]
            LK = item.par[4]
            bdisp = item.par[5] # 0 forwards, 1 backwards
            extension = ""
            if (AA == 0) & (LK == 0):
                #if (BO == 12) & (BI == 0):
                #    output_sseq += "blt     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 12) & (BI == 2):
                #    output_sseq += "beq-    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 13) & (BI == 2):
                #    output_sseq += "beq+    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 16) & (BI == 0):
                #    output_sseq += "bdnz    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 4) & (BI == 2):
                #    output_sseq += "bne     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 4) & (BI == 0):
                #    output_sseq += "bge     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #else:
                #output_sseq += "bc      " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = ""
            elif (AA == 1) & (LK == 0):
                #output_sseq += "bca     " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "a"
            elif (AA == 0) & (LK == 1):
                #output_sseq += "bcl     " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "l"
            elif (AA == 1) & (LK == 1):
                #output_sseq += "bcla    " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "la"
            output_sseq += getBC(BI, BO, bdisp, extension)
            output_sseq += getBranchLabelOfAdr(target_adr, base_address) + "\n"
            if isBranchAlways(BO, LK):
                output_sseq += "\n"
        elif item.cmd == "sc":
            output_sseq += "sc\n"
        elif item.cmd == "bclrx":
            BO = item.par[0]
            BI = item.par[1]
            LK = item.par[2]
            if ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 0):
                output_sseq += "blr\n"
            elif ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 1):
                output_sseq += "blrl\n"
            else:
                if LK == 0:
                    output_sseq += getBC(BI, BO, 0, "lr") + "\n"
                    #if (BO == 12) & (BI == 2):
                    #    output_sseq += "beqlr\n\n"
                    #else:
                    #    output_sseq += "bclr    " + str(BO) + ", " + str(BI) + "\n"
                else:
                    output_sseq += getBC(BI, BO, 0, "lrl") + "\n"
                    #output_sseq += "bclrl   " + str(BO) + ", " + str(BI) + "\n"
        elif item.cmd == "rfi":
            output_sseq += "rfi\n"
        elif item.cmd == "isync":
            output_sseq += "isync\n"
        elif item.cmd == "crxor":
            crbD = item.par[0]
            crbA = item.par[1]
            crbB = item.par[2]
            output_sseq += "crxor " + getCrbNames(crbD) + ", " + getCrbNames(crbA) + ", " + getCrbNames(crbB) + "\n"
        elif item.cmd == "creqv":
            crbD = item.par[0]
            crbA = item.par[1]
            crbB = item.par[2]
            output_sseq += "creqv " + getCrbNames(crbD) + ", " + getCrbNames(crbA) + ", " + getCrbNames(crbB) + "\n"
        elif item.cmd == "cror":
            crbD = item.par[0]
            crbA = item.par[1]
            crbB = item.par[2]
            output_sseq += "cror " +getCrbNames(crbD) + ", " + getCrbNames(crbA) + ", " + getCrbNames(crbB) + "\n"
        elif item.cmd == "bcctrx":
            BO = item.par[0]
            BI = item.par[1]
            LK = item.par[2]
            if LK == 0:
                output_sseq += getBC(BI, BO, 0, "ctr") + "\n"
                #output_sseq += "bcctr   " + str(BO) + ", " + str(BI) + "\n"
            else:
                output_sseq += getBC(BI, BO, 0, "ctrl") + "\n"
                #output_sseq += "bcctrl  " + str(BO) + ", " + str(BI) + "\n"
        elif item.cmd == "rlwimix":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            MB = item.par[3]
            ME = item.par[4]
            Rc = item.par[5]
            if ((32-MB) == SH):
                output_sseq += "inslwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(ME-MB+1) + ", " + str(MB) + "\n"
                # ME = MB+n-1 => n = ME-MB+1
            elif (-SH+32-MB) == (ME+1-MB):
                output_sseq += "insrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(-SH+32-MB) + ", " + str(MB) + "\n"
                # insrwi: b=MB
                # SH = 32 - (MB+n) => -SH+32-MB = n
                # ME = (MB+n) - 1 => ME+1-MB = n
            else:
                output_sseq += "rlwimi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + ", " + str(MB) + ", " + str(ME) + "\n"
        elif item.cmd == "rlwinmx":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            MB = item.par[3]
            ME = item.par[4]
            Rc = item.par[5]
            if (MB == 0) & (ME == 31): # rotlwi, rotrwi
                output_sseq += "rotlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + "\n"
            elif (SH == 0) & (MB == 0):
                output_sseq += "clrrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(-(ME-31)) + "\n" # ME = 31 - n => n = -(ME-31)
            elif (SH == 0) & (ME == 31):
                output_sseq += "clrlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(MB) + "\n"
            elif (ME == (31-SH)) & (MB == 0):
                output_sseq += "slwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + "\n"
            elif ((32-MB) == SH) & (ME == 31):
                output_sseq += "srwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(MB) + "\n"
            elif (SH == (-ME+31)) & (SH <= (MB+SH)) & (MB+SH < 32):
                n = SH
                b = MB+SH
                output_sseq += "clrlslwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(b) + ", " + str(n) + "\n"
                # clrlslwi
                # n = SH
                # MB = b-SH => b = MB+SH
                # ME = 31-SH => SH = -ME+31
            elif MB == 0:
                output_sseq += "extlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(ME+1) + ", " + str(SH) + "\n"
            elif ME == 31:
                # MB = 32-n => n = -MB+32
                # SH = b+n => b = SH-n
                n = -MB+32
                b = SH-n
                output_sseq += "extrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(n) + ", " + str(b) + "\n"
            else:
                output_sseq += "rlwinm" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + ", " + str(MB) + ", " + str(ME) + "\n"
        elif item.cmd == "rlwnmx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            MB = item.par[3]
            ME = item.par[4]
            Rc = item.par[5]
            output_sseq += "rlwnm" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + ", " + str(MB) + ", " + str(ME) + "\n"
        elif item.cmd == "ori":
            s = item.par[0]
            a = item.par[1]
            uimm = item.par[2]
            output_sseq += "ori " + getRegNames(a) + ", " + getRegNames(s) + ", " + hex(uimm) + "\n"
        elif item.cmd == "oris":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "oris " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "xori":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "xori " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "xoris":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "xoris " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "andi.":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "andi. " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "cmp":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            B = item.par[3]
            #output_sseq += "cmp     " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            if crfD == 0:
                output_sseq += "cmp" + getCmpName(L) + " " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "cmp" + getCmpName(L) + " " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "subfcx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfc %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfc. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfco %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfco. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "addcx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "addc %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "addc. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addco %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addco. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "mulhwux":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "mulhwu %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "mulhwu. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "mfcr":
            D = item.par[0]
            output_sseq += "mfcr %r" + str(D) + "\n"
        elif item.cmd == "lwzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lwzx %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "slwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "slw %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "slw. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
        elif item.cmd == "cntlzwx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "cntlzw %r" + str(A) + ", %r" + str(S) + "\n"
            else:
                output_sseq += "cntlzw. %r" + str(A) + ", %r" + str(S) + "\n"
        elif item.cmd == "andx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "and %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "and. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
        elif item.cmd == "cmpl":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            B = item.par[3]
            #output_sseq += "cmpl    " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            if crfD == 0:
                output_sseq += "cmpl" + getCmpName(L) + " " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "cmpl" + getCmpName(L) + " " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "subfx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subf %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subf. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfo %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfo. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "dcbst":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbst %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "andcx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "andc %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "andc. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
        elif item.cmd == "mulhwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "mulhw %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "mulhw. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "mfmsr":
            D = item.par[0]
            output_sseq += "mfmsr %r" + str(D) + "\n"
        elif item.cmd == "dcbf":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbf %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "lbzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lbzx %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "neg":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "neg %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "neg. %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "nego %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "nego. %r" + str(D) + ", %r" + str(A) + "\n"
        elif item.cmd == "norx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                if S == B:
                    output_sseq += "not %r" + str(A) + ", %r" + str(S) + "\n"
                else:
                    output_sseq += "nor %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
            else:
                if S == B:
                    output_sseq += "not. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
                else:
                    output_sseq += "nor. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
        elif item.cmd == "subfe":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfe %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfe. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfeo %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfeo. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "addex":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "adde %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "adde. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addeo %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addeo. %r" + str(D) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "mtcrf":
            S = item.par[0]
            CRM = item.par[1]
            output_sseq += "mtcrf " + str(CRM) + ", %r" + str(S) + "\n"
        elif item.cmd == "mtmsr":
            S = item.par[0]
            output_sseq += "mtmsr %r" + str(S) + "\n"
        elif item.cmd == "stwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stwx %r" + str(S) + ", %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "subfzex":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfze %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfze. %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfzeo %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfzeo. %r" + str(D) + ", %r" + str(A) + "\n"
        elif item.cmd == "addzex":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "addze %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "addze. %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addzeo %r" + str(D) + ", %r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addzeo. %r" + str(D) + ", %r" + str(A) + "\n"
        elif item.cmd == "mtsr":
            S = item.par[0]
            SR = item.par[1]
            output_sseq += "mtsr " + str(SR) + ", " + getRegNames(S) + "\n"
        elif item.cmd == "stbx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stbx " + getRegNames(S) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mullwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "mullw " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "mullw. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "mullwo " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "mullwo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "addx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "add " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "add. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addo " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "dcbt":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbt " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "lhzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lhzx " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "eqvx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "eqv " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "eqv. " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "xorx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "xor " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "xor. " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mfspr":
            D = item.par[0]
            spr = item.par[1]
            spr2 = item.par[2]
            if spr == 1:
                output_sseq += "mfxer " + getRegNames(D) + "\n"
            elif spr == 8:
                output_sseq += "mflr " + getRegNames(D) + "\n"
            elif spr == 9:
                output_sseq += "mfctr " + getRegNames(D) + "\n"
            else:
                output_sseq += "mfspr " + getRegNames(D) + ", " + str(spr | (spr2<<5)) + "\n"
        elif item.cmd == "lhax":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lhax " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mftb":
            D = item.par[0]
            tbr = item.par[1]
            tbr2 = item.par[2]
            output_sseq += "mftb " + getRegNames(D) + ", " + str(tbr | (tbr2<<5)) + "\n"
        elif item.cmd == "sthx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "sthx " + getRegNames(S) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "or":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if S == B:
                if Rc == 0:
                    output_sseq += "mr " + getRegNames(A) + ", " + getRegNames(S) + "\n"
                else:
                    output_sseq += "mr. " + getRegNames(A) + ", " + getRegNames(S) + "\n"
            else:
                if Rc == 0:
                    output_sseq += "or " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
                else:
                    output_sseq += "or. " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "divwux":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "divwu " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "divwu. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "divwuo " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "divwuo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mtspr":
            S = item.par[0]
            spr = item.par[1]
            spr2 = item.par[2]
            if spr == 1:
                output_sseq += "mtxer " + getRegNames(S) + "\n"
            elif spr == 8:
                output_sseq += "mtlr " + getRegNames(S) + "\n"
            elif spr == 9:
                output_sseq += "mtctr " + getRegNames(S) + "\n"
            else:
                output_sseq += "mtspr " + str(spr | (spr2<<5)) + ", " + getRegNames(S) + "\n"
        elif item.cmd == "dcbi":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbi " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "divwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "divw " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "divw. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "divwo " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "divwo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "lfsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lfsx " + getFprNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "srwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "srw " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "srw. " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mfsr":
            D = item.par[0]
            SR = item.par[1]
            output_sseq += "mfsr " + getRegNames(D) + ", " + str(SR) + "\n"
        elif item.cmd == "lfdx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lfdx " + getFprNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "sync":
            output_sseq += "sync\n"
        elif item.cmd == "stfsx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stfsx " + getFprNames(S) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "srawx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "sraw %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
            else:
                output_sseq += "sraw. %r" + str(A) + ", %r" + str(S) + ", %r" + str(B) + "\n"
        elif item.cmd == "srawix":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "srawi %r" + str(A) + ", %r" + str(S) + ", " + str(SH) + "\n"
            else:
                output_sseq += "srawi. %r" + str(A) + ", %r" + str(S) + ", " + str(SH) + "\n"
        elif item.cmd == "extshx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "extsh %r" + str(A) + ", %r" + str(S) + "\n"
            else:
                output_sseq += "extsh. %r" + str(A) + ", %r" + str(S) + "\n"
        elif item.cmd == "extsbx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "extsb %r" + str(A) + ", %r" + str(S) + "\n"
            else:
                output_sseq += "extsb. %r" + str(A) + ", %r" + str(S) + "\n"
        elif item.cmd == "icbi":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "icbi %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "dcbz":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbz %r" + str(A) + ", %r" + str(B) + "\n"
        elif item.cmd == "lwz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lwz " + getRegNames(D) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lwzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lwzu " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lbz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lbz " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lbzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lbzu " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stw":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stw " + getRegNames(S) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stwu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stwu " + getRegNames(S) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stb":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stb " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stbu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stbu " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lhz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lhz " + getRegNames(D) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lhzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lhzu " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lha":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lha " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lhau":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lhau " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "sth":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "sth " + getRegNames(S) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "sthu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "sthu " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lmw":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            Cmd = item.par[3]
            if D == 0: # is illegal (https://sourceware.org/bugzilla/show_bug.cgi?id=985)
                output_sseq += ".4byte " + hex(Cmd)[:-1:] + " #"
            output_sseq += "lmw " + getRegNames(D) + ", " + SignExtendedOffset16(d)[:-1:] + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stmw":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stmw " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfs":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfs " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfsu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfsu    " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfd":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfd " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfs":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfs " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfsu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfsu " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfd":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfd " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "psq_l":
            D = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_l " + getFprNames(D) + ", " + SignExtendedOffset12(d) + "(" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "psq_lu":
            D = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_lu " + getFprNames(D) + ", " + SignExtendedOffset12(d) + "(" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "fdivs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fdivs " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fdivs. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fsubs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fsubs " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fsubs. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "faddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fadds " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fadds. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fresx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fres " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fres. " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmuls":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fmuls " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
            else:
                output_sseq += "fmuls. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
        elif item.cmd == "fmsubsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fmsubs" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmaddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fmadds" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmsubsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fnmsubs" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmaddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fnmadds" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "xsmaddasp":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "xsmaddasp vs" + str(D) + ", vs" + str(A) + ", vs" + str(B) + "\n"
        elif item.cmd == "psq_st":
            S = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_st " + getFprNames(S) + ", " + SignExtendedOffset12(d) + "(" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "psq_stu":
            S = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_stu " + getFprNames(S) + ", " + SignExtendedOffset12(d)[:-1:] + "(" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "fcmpu":
            crfD = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "fcmpu " + getCrNames(crfD) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "frspx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "frsp" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fctiwzx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "fctiwz" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fdivx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "fdiv" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fsubx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "fsub" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "faddx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "fadd" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fselx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fsel" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmulx":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "fmul" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
        elif item.cmd == "frsqrtex":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "frsqrte " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "frsqrte. " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmsubx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fmsub" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmaddx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fmadd" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmsubx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fnmsub " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fnmsub. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fcmpo":
            crfD = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "fcmpo " + getCrNames(crfD) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "mtfsb1":
            crbD = item.par[0]
            Rc = item.par[1]
            output_sseq += "mtfsb1" + getRc(Rc) + " " + str(crbD) + "\n"
        elif item.cmd == "fnegx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "fneg" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmrx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "fmr" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fabsx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "fabs" + getRc(Rc) + " " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "mffs":
            D = item.par[0]
            Rc = item.par[1]
            output_sseq += "mffs" + getRc(Rc) + " " + getFprNames(D) + "\n"
        elif item.cmd == "mtfsf":
            FM = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "mtfsf" + getRc(Rc) + " " + str(FM) + ", " + getFprNames(B) + "\n"
        else:
            output_sseq += item.cmd + " " + str(item.par) + "\n"
    
    if old_offset < (base_address+filesize):
        #.incbin "./baserom.bin", 0x14c, 0x221f96c - 0x221f94c
        output_sseq += "\t.incbin \"" + filename + "\", " + hex(old_offset-base_address)[:-1:] + ", " + hex(base_address+filesize)[:-1:] + " - " + hex(old_offset)[:-1:] + "\n"
    
    write_string_to_file(filename_out, output_sseq)


RegD = 1<<0
RegS = 1<<0
RegCrbD = 1<<0
RegBO = 1<<0
RegA = 1<<1
RegSpr = 1<<1
RegTbr = 1<<1
RegCrbA = 1<<1
RegBI = 1<<1
RegB = 1<<2
RegTbr2 = 1<<2
RegSH = 1<<2
RegSpr2 = 1<<2
RegCrbB = 1<<2
RegC = 1<<3
RegMB = 1<<3
BitRc = 1<<4
RegLK = 1<<4
RegCrfD = 1<<5
RegL = 1<<6
RegOE = 1<<7
RegCRM = 1<<9
RegSR = 1<<10
RegFM = 1<<17
RegSimm = 1<<23
RegUimm = 1<<23
RegME = 1<<25
RegW = 1<<26
RegI = 1<<27
RegW2 = 1<<28
RegI2 = 1<<29
RegUimm2 = 1<<30
RegCmd = 1<<31
# https://github.com/dolphin-emu/dolphin/blob/6f272b3a4c31a43f8d4fd8b7fd914112d4fd820b/Source/Core/Core/PowerPC/Interpreter/Interpreter_Tables.cpp
CmdDict0 = {
    7: ("mulli", RegD|RegA|RegSimm),
    8: ("subfic", RegD|RegA|RegSimm),
    10: ("cmpli", RegCrfD|RegL|RegA|RegUimm),
    11: ("cmpi", RegCrfD|RegL|RegA|RegSimm),
    12: ("addic", RegD|RegA|RegSimm),
    13: ("addic.", RegD|RegA|RegSimm),
    14: ("addi", RegD|RegA|RegSimm),
    15: ("addis", RegD|RegA|RegSimm),
    17: ("sc", 0),
    20: ("rlwimix", RegS|RegA|RegSH|RegMB|RegME|BitRc),
    21: ("rlwinmx", RegS|RegA|RegSH|RegMB|RegME|BitRc),
    23: ("rlwnmx", RegS|RegA|RegB|RegMB|RegME|BitRc),
    24: ("ori", RegS|RegA|RegUimm),
    25: ("oris", RegS|RegA|RegUimm),
    26: ("xori", RegS|RegA|RegUimm),
    27: ("xoris", RegS|RegA|RegUimm),
    28: ("andi.", RegS|RegA|RegUimm),
    32: ("lwz", RegD|RegA|RegUimm),
    33: ("lwzu", RegD|RegA|RegUimm),
    34: ("lbz", RegD|RegA|RegUimm),
    35: ("lbzu", RegD|RegA|RegUimm),
    36: ("stw", RegS|RegA|RegUimm),
    37: ("stwu", RegS|RegA|RegUimm),
    38: ("stb", RegS|RegA|RegUimm),
    39: ("stbu", RegS|RegA|RegUimm),
    40: ("lhz", RegD|RegA|RegUimm),
    41: ("lhzu", RegD|RegA|RegUimm),
    42: ("lha", RegD|RegA|RegUimm),
    43: ("lhau", RegD|RegA|RegUimm),
    44: ("sth", RegS|RegA|RegUimm),
    45: ("sthu", RegS|RegA|RegUimm),
    46: ("lmw", RegD|RegA|RegUimm|RegCmd),
    47: ("stmw", RegS|RegA|RegUimm),
    48: ("lfs", RegD|RegA|RegUimm),
    49: ("lfsu", RegD|RegA|RegUimm),
    50: ("lfd", RegD|RegA|RegUimm),
    52: ("stfs", RegS|RegA|RegUimm),
    53: ("stfsu", RegS|RegA|RegUimm),
    54: ("stfd", RegS|RegA|RegUimm),
    56: ("psq_l", RegD|RegA|RegW|RegI|RegUimm2),
    57: ("psq_lu", RegD|RegA|RegW|RegI|RegUimm2),
    60: ("psq_st", RegS|RegA|RegW|RegI|RegUimm2),
    61: ("psq_stu", RegS|RegA|RegW|RegI|RegUimm2),
    }
CmdDict4_1 = {
    6: ("psq_lx", RegD|RegA|RegB|RegW2|RegI2),
    10: ("ps_sum0", RegD|RegA|RegB|RegC|BitRc), # 10
    11: ("ps_sum1", RegD|RegA|RegB|RegC|BitRc), # 11
    12: ("ps_muls0", RegD|RegA|RegC|BitRc), # 12
    13: ("ps_muls1", RegD|RegA|RegC|BitRc), # 13
    14: ("ps_madds0", RegD|RegA|RegB|RegC|BitRc), # 14
    15: ("ps_madds1", RegD|RegA|RegB|RegC|BitRc), # 15
    #16: ("vmhaddshs", RegD|RegA|RegB|RegC), # 16
    20: ("ps_sub", RegD|RegA|RegB|BitRc), # 20
    21: ("ps_add", RegD|RegA|RegB|BitRc), # 21
    25: ("ps_mul", RegD|RegA|RegC|BitRc), # 25
    28: ("ps_msub", RegD|RegA|RegB|RegC|BitRc), # 28
    29: ("ps_madd", RegD|RegA|RegB|RegC|BitRc), # 29
    30: ("ps_nmsub", RegD|RegA|RegB|RegC|BitRc), # 30
    31: ("ps_nmadd", RegD|RegA|RegB|RegC|BitRc), # 31
    }
CmdDict4_2 = {
    32: ("ps_cmpo0", RegD|RegA|RegB|BitRc|RegCmd),
    40: ("ps_neg", RegD|RegB|BitRc),
    528: ("ps_merge00", RegD|RegA|RegB|BitRc),
    560: ("ps_merge01", RegD|RegA|RegB|BitRc),
    592: ("ps_merge10", RegD|RegA|RegB|BitRc),
    624: ("ps_merge11", RegD|RegA|RegB|BitRc),
    1014: ("dcbz_l", RegA|RegB|BitRc),
    }
CmdDict19 = {
    150: ("isync", RegS),
    193: ("crxor", RegCrbD|RegCrbA|RegCrbB),
    289: ("creqv", RegCrbD|RegCrbA|RegCrbB),
    449: ("cror", RegCrbD|RegCrbA|RegCrbB),
    528: ("bcctrx", RegBO|RegBI|RegLK),
    }
CmdDict31 = {
    0: ("cmp", RegCrfD|RegL|RegA|RegB),
    8: ("subfcx", RegD|RegA|RegB|RegOE|BitRc),
    10: ("addcx", RegD|RegA|RegB|RegOE|BitRc),
    11: ("mulhwux", RegD|RegA|RegB|BitRc),
    19: ("mfcr", RegD),
    23: ("lwzx", RegD|RegA|RegB),
    24: ("slwx", RegS|RegA|RegB|BitRc),
    26: ("cntlzwx", RegS|RegA|BitRc),
    28: ("andx", RegS|RegA|RegB|BitRc),
    32: ("cmpl", RegCrfD|RegL|RegA|RegB),
    40: ("subfx", RegD|RegA|RegB|RegOE|BitRc),
    54: ("dcbst", RegA|RegB),
    60: ("andcx", RegS|RegA|RegB|BitRc),
    75: ("mulhwx", RegD|RegA|RegB|BitRc),
    83: ("mfmsr", RegD), # todo
    86: ("dcbf", RegA|RegB),
    87: ("lbzx", RegD|RegA|RegB),
    104: ("neg", RegD|RegA|RegOE|BitRc),
    124: ("norx", RegS|RegA|RegB|BitRc),
    136: ("subfe", RegD|RegA|RegB|RegOE|BitRc),
    138: ("addex", RegD|RegA|RegB|RegOE|BitRc),
    144: ("mtcrf", RegS|RegCRM),
    146: ("mtmsr", RegS),
    151: ("stwx", RegS|RegA|RegB),
    200: ("subfzex", RegD|RegA|RegOE|BitRc),
    202: ("addzex", RegD|RegA|RegOE|BitRc),
    210: ("mtsr", RegS|RegSR),
    215: ("stbx", RegS|RegA|RegB),
    235: ("mullwx", RegD|RegA|RegB|RegOE|BitRc),
    266: ("addx", RegD|RegA|RegB|RegOE|BitRc),
    278: ("dcbt", RegA|RegB),
    279: ("lhzx", RegD|RegA|RegB),
    284: ("eqvx", RegS|RegA|RegB|BitRc),
    316: ("xorx", RegS|RegA|RegB|BitRc),
    339: ("mfspr", RegD|RegSpr|RegSpr2),
    343: ("lhax", RegD|RegA|RegB),
    371: ("mftb", RegD|RegTbr|RegTbr2),
    407: ("sthx", RegS|RegA|RegB),
    444: ("or", RegS|RegA|RegB|BitRc),
    459: ("divwux", RegD|RegA|RegB|RegOE|BitRc),
    467: ("mtspr", RegS|RegSpr|RegSpr2),
    470: ("dcbi", RegA|RegB),
    491: ("divwx", RegD|RegA|RegB|RegOE|BitRc),
    535: ("lfsx", RegD|RegA|RegB),
    536: ("srwx", RegS|RegA|RegB|BitRc),
    595: ("mfsr", RegD|RegSR),
    598: ("sync", RegS),
    599: ("lfdx", RegD|RegA|RegB),
    663: ("stfsx", RegS|RegA|RegB),
    792: ("srawx", RegS|RegA|RegB|BitRc),
    824: ("srawix", RegS|RegA|RegSH|BitRc),
    922: ("extshx", RegS|RegA|BitRc),
    954: ("extsbx", RegS|RegA|BitRc),
    982: ("icbi", RegA|RegB),
    1014: ("dcbz", RegA|RegB),
    }
CmdDict59 = {
    18: ("fdivs", RegD|RegA|RegB|BitRc),
    20: ("fsubs", RegD|RegA|RegB|BitRc),
    21: ("faddsx", RegD|RegA|RegB|BitRc),
    24: ("fresx", RegD|RegB|BitRc),
    25: ("fmuls", RegD|RegA|RegC|BitRc),
    28: ("fmsubsx", RegD|RegA|RegB|RegC|BitRc),
    29: ("fmaddsx", RegD|RegA|RegB|RegC|BitRc),
    30: ("fnmsubsx", RegD|RegA|RegB|RegC|BitRc),
    31: ("fnmaddsx", RegD|RegA|RegB|RegC|BitRc),
    }
CmdDict63_1 = {
    12: ("frspx", RegD|RegB|BitRc),
    15: ("fctiwzx", RegD|RegB|BitRc),
    18: ("fdivx", RegD|RegA|RegB|BitRc),
    20: ("fsubx", RegD|RegA|RegB|BitRc),
    21: ("faddx", RegD|RegA|RegB|BitRc),
    23: ("fselx", RegD|RegA|RegB|RegC|BitRc),
    25: ("fmulx", RegD|RegA|RegC|BitRc),
    26: ("frsqrtex", RegD|RegB|BitRc),
    28: ("fmsubx", RegD|RegA|RegB|RegC|BitRc),
    29: ("fmaddx", RegD|RegA|RegB|RegC|BitRc),
    30: ("fnmsubx", RegD|RegA|RegB|RegC|BitRc),
    }
CmdDict63_2 = {
    0: ("fcmpu", RegCrfD|RegA|RegB),
    32: ("fcmpo", RegCrfD|RegA|RegB),
    38: ("mtfsb1", RegCrbD|BitRc),
    40: ("fnegx", RegD|RegB|BitRc),
    72: ("fmrx", RegD|RegB|BitRc),
    264: ("fabsx", RegD|RegB|BitRc),
    583: ("mffs", RegD|BitRc),
    711: ("mtfsf", RegFM|RegB|BitRc),
    }

def interpretCmdDict(word, CmdNr, CmdDict, offset, i):
    paras = ()
    
    CmdData = CmdDict.get(CmdNr)
    if CmdData == None:
        return 0
    
    if CmdData[1] & RegCrfD:
        crfD = (word >> 23) & 0x7
        paras = paras + (crfD,)
    if CmdData[1] & RegL:
        L = (word >> 21) & 0x1
        paras = paras + (L,)
    if CmdData[1] & RegD: # RegS, RegCrbD, RegBO
        D = (word >> 21) & 0x1f
        paras = paras + (D,)
    if CmdData[1] & RegFM:
        FM = (word >> 17) & 0xff
        paras = paras + (FM,)
    if CmdData[1] & RegA: # RegSpr, RegTbr, RegCrbA, RegBI
        A = (word >> 16) & 0x1f
        paras = paras + (A,)
    if CmdData[1] & RegSR:
        SR = (word >> 16) & 0xf
        paras = paras + (SR,)
    if CmdData[1] & RegW:
        W = (word >> 15) & 0x1
        paras = paras + (W,)
    if CmdData[1] & RegCRM:
        CRM = (word >> 12) & 0xff
        paras = paras + (CRM,)
    if CmdData[1] & RegI:
        I = (word >> 12) & 0x7
        paras = paras + (I,)
    if CmdData[1] & RegB: # RegTbr2, RegSH, RegSpr2, RegCrbB
        B = (word >> 11) & 0x1f
        paras = paras + (B,)
    if CmdData[1] & RegOE:
        OE = (word >> 10) & 0x1
        paras = paras + (OE,)
    if CmdData[1] & RegW2:
        W = (word >> 9) & 0x1
        paras = paras + (W,)
    if CmdData[1] & RegI2:
        I = (word >> 6) & 0x7
        paras = paras + (I,)
    if CmdData[1] & RegC: # RegMB
        C = (word >> 6) & 0x1f
        paras = paras + (C,)
    if CmdData[1] & RegME:
        ME = (word >> 1) & 0x1f
        paras = paras + (ME,)
    if CmdData[1] & BitRc: # RegLK
        Rc = (word >> 0) & 0x1
        paras = paras + (Rc,)
    if CmdData[1] & RegSimm:
        simm = (word & 0xffff)
        paras = paras + (simm,)
    if CmdData[1] & RegUimm2:
        uimm = (word & 0xfff)
        paras = paras + (uimm,)
    if CmdData[1] & RegCmd:
        paras = paras + (word,)
    addSSEQCmd(offset+i, CmdData[0], paras)
    return 1

def interpretCmdTable(word, CmdNr, CmdTable, TableNr, offset, i, base_address):
    paras = ()
    
    if len(CmdTable) < TableNr:
        raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
    
    if CmdTable[TableNr][2] & RegCrfD:
        crfD = (word >> 23) & 0x7
        paras = paras + (crfD,)
    if CmdTable[TableNr][2] & RegL:
        L = (word >> 21) & 0x1
        paras = paras + (L,)
    if CmdTable[TableNr][2] & RegD: # RegS, RegCrbD, RegBO
        D = (word >> 21) & 0x1f
        paras = paras + (D,)
    if CmdTable[TableNr][2] & RegFM:
        FM = (word >> 17) & 0xff
        paras = paras + (FM,)
    if CmdTable[TableNr][2] & RegA: # RegSpr, RegTbr, RegCrbA, RegBI
        A = (word >> 16) & 0x1f
        paras = paras + (A,)
    if CmdTable[TableNr][2] & RegSR:
        SR = (word >> 16) & 0xf
        paras = paras + (SR,)
    if CmdTable[TableNr][2] & RegW:
        W = (word >> 15) & 0x1
        paras = paras + (W,)
    if CmdTable[TableNr][2] & RegCRM:
        CRM = (word >> 12) & 0xff
        paras = paras + (CRM,)
    if CmdTable[TableNr][2] & RegI:
        I = (word >> 12) & 0x7
        paras = paras + (I,)
    if CmdTable[TableNr][2] & RegB: # RegTbr2, RegSH, RegSpr2, RegCrbB
        B = (word >> 11) & 0x1f
        paras = paras + (B,)
    if CmdTable[TableNr][2] & RegOE:
        OE = (word >> 10) & 0x1
        paras = paras + (OE,)
    if CmdTable[TableNr][2] & RegC: # RegMB
        C = (word >> 6) & 0x1f
        paras = paras + (C,)
    if CmdTable[TableNr][2] & RegME:
        ME = (word >> 1) & 0x1f
        paras = paras + (ME,)
    if CmdTable[TableNr][2] & BitRc: # RegLK
        Rc = (word >> 0) & 0x1
        paras = paras + (Rc,)
    if CmdTable[TableNr][2] & RegSimm:
        simm = (word & 0xffff)
        paras = paras + (simm,)
    addSSEQCmd(offset+i, CmdTable[TableNr][1], paras)


class Disassembler(object):
    rom = []
    filenamepath = ""
    filesize = 0
    base_address = 0

    def __init__(self, config):
        self.config = config

    def initialize(self, filename, base):
        rom_path = os.path.join(self.config.path, filename)
        self.filenamepath = filename
        self.rom = bytearray(open(rom_path, "rb").read())
        self.filesize = os.path.getsize(filename)
        self.base_address = base

    def is_adr_in_range(self, addr):
        if (addr >= self.base_address) & (addr < (self.base_address+self.filesize)):
            return 1
        else:
            return 0

    def get_word_from_rom(self, adr):
        addr = adr - self.base_address
        return (self.rom[addr] << 24) | (self.rom[addr+1] << 16) | (self.rom[addr+2] << 8) | (self.rom[addr+3] << 0)

    def get_hword_from_rom(self, adr):
        addr = adr - self.base_address
        return (self.rom[addr] << 8) | (self.rom[addr+1] << 0)

    def get_byte_from_rom(self, adr):
        addr = adr - self.base_address
        return self.rom[addr]

    def write_section_in_file(self, addr, size):
        if size == 0: return None
        filename = 'data/data_' + "{:08x}".format(addr) + '.bin'
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None

    def write_section_in_file_wfilename(self, addr, size, filename):
        #if size == 0: return None
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        f.close()
        return None
        

    def unpack_sseq_file(self, filename, base_address, start_address, outfilename, debug=False):
        output = ""
        output_sseq = "test123"
        
        folder = filename.replace(".bin", "_bin")
        
        addLabelAdr(start_address, "sub_" + hex(start_address-base_address)[2:-1:], "sub")

        FunctionLength = 0x10000
        offsetn = 0
        while offsetn < getNrOfLabelAddresses():
            offset = getNthAdr(offsetn)
            i = 0
            cmd = 0
            ending = 0
            while (checkSSEQoffset(offset+i) == 0) & self.is_adr_in_range(offset+i) & (i < FunctionLength) & (ending == 0):
                word = self.get_word_from_rom(offset+i)
                CmdNr = (word >> 26)
                if (CmdNr == 18): # bx
                    LI = (word & 0x3fffffc)
                    AA = (word >> 1) & 0x1
                    LK = (word >> 0) & 0x1
                    if ((LI >> 25) & 0x1) == 1:
                        LI = (0x4000000 - LI) * -1
                    else:
                        LI = LI
                    if AA == 0:
                        target_adr = LI + offset + i
                    else:
                        target_adr = LI
                    if self.is_adr_in_range(target_adr):
                        if LK == 0:
                            addLabelAdr(target_adr, "_" + hex(target_adr-base_address)[2:-1:], "_")
                        else:
                            addLabelAdr(target_adr, "sub_" + hex(target_adr-base_address)[2:-1:], "sub")
                    #else:
                    addSSEQCmd(offset+i, "bx", (target_adr, AA, LK))
                    if LK == 0:
                        ending = 1
                elif CmdNr == 16: # bcx (beq)  - beq ADDRESS is really bc 12, 10 ADDRESS
                    # 01000 00110 10001 0 false
                    # 01000 00110 00001 0 right
                    BO = (word >> 21) & 0x1f
                    BI = (word >> 16) & 0x1f
                    BD = (word & 0xfffc)
                    if (BD & 0x8000): # todo in a more general way (function)
                        BD = BD | 0xffff0000
                        BD = -0x100000000 + BD
                    bdisp = BD
                    AA = (word >> 1) & 0x1
                    LK = (word >> 0) & 0x1
                    if AA == 0:
                        target_adr = BD + offset + i
                    else:
                        target_adr = BD
                    if self.is_adr_in_range(target_adr):
                        addLabelAdr(target_adr, "_" + hex(target_adr-base_address)[2:-1:], "_")
                    addSSEQCmd(offset+i, "bcx", (BO, BI, target_adr, AA, LK, bdisp))
                    if isBranchAlways(BO, LK):
                        ending = 1
                elif (CmdNr == 19) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 16): # bclrx (blr)
                    BO = (word >> 21) & 0x1f
                    BI = (word >> 16) & 0x1f
                    LK = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "bclrx", (BO, BI, LK))
                    if ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 0):
                        ending = 1
                elif (CmdNr == 19) & (((word >> 1) & 0x3ff) == 50): # rfi
                    S = 0
                    addSSEQCmd(offset+i, "rfi", (S))
                    ending = 1
                elif (CmdNr == 4):
                    CmdDict = CmdDict4_1
                    CmdNr2 = ((word >> 1) & 0x1f)
                    if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                        CmdDict = CmdDict4_2
                        CmdNr2 = ((word >> 1) & 0x3ff)
                        if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                            raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                elif (CmdNr == 19):
                    CmdDict = CmdDict19
                    CmdNr2 = ((word >> 1) & 0x3ff)
                    if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                        raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                elif (CmdNr == 31):
                    CmdDict = CmdDict31
                    CmdNr2 = ((word >> 1) & 0x3ff)
                    if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                        #raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                        output_sseq += ".4byte " + hex(word) + " # TODO"
                elif (CmdNr == 59):
                    CmdDict = CmdDict59
                    CmdNr2 = ((word >> 1) & 0x1f)
                    if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                        raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                elif (CmdNr == 63):
                    CmdDict = CmdDict63_1
                    CmdNr2 = ((word >> 1) & 0x1f)
                    if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                        CmdDict = CmdDict63_2
                        CmdNr2 = ((word >> 1) & 0x3ff)
                        if interpretCmdDict(word, CmdNr2, CmdDict, offset, i) == 0:
                            raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                else:
                    CmdDict = CmdDict0
                    if interpretCmdDict(word, CmdNr, CmdDict, offset, i) == 0:
                        # raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(CmdNr) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                        output_sseq += ".4byte " + hex(word) + " # TODO"
                """
                else:
                    CmdTable = CmdTable0
                    TableNr = 0
                    for item in CmdTable:
                        if item[0] == CmdNr:
                            break
                        TableNr += 1
                    
                    interpretCmdTable(word, CmdNr, CmdTable, TableNr, offset, i, base_address)
                """
                    #raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(word >> 26) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                """
                elif ((word >> 26) == 60) & (((word >> 1) & 0x3ff) == 4): # xsmaddasp
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "xsmaddasp", (D, A, B))
                """
                i += 4
                if i == FunctionLength:
                    print "reached end (" + hex(offset) + ")"
            offsetn += 1
        
        #output_sseq += "i: " + str(i) + "\n"
        #output_sseq += "offset: " + str(offset+i) + "\n"
        
        filename_out = filename.replace(".bin", ".bin.txt")
        write_string_to_file(filename_out, output_sseq)
        writeSSEQListToFile(outfilename, self.filenamepath, base_address, self.filesize)

        return (output)


if __name__ == "__main__":
    conf = configuration.Config()
    dis = Disassembler(conf)
    
    cmd = ""
    filename = ""
    filename_sseq = ""
    outfilename = ""
    path = ""
    debugFlag = False
    filelist = []
    filelist_on = 0
    base_address = 0
    start_address = 0
    filename_labels = ""
    filename_starts = ""
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-o":
            filelist_on = 0
            outfilename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-ppc":
            cmd = "ppc"
            filelist_on = 0
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-base":
            base_address = sys.argv[i+1]
            base_address = int(base_address, 16)
            i += 2
        elif sys.argv[i] == "-start":
            start_address = sys.argv[i+1]
            start_address = int(start_address, 16)
            i += 2
        elif sys.argv[i] == "-labels":
            filename_labels = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-starts":
            filename_starts = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-debug":
            filelist_on = 0
            debugFlag = True
            i += 2
        else:
            if filelist_on == 1:
                filelist += [sys.argv[i]]
            i += 1

    if filename_labels != "":
        with open(filename_labels) as f:
            content = f.readlines()
        for line in content:
            line = line.strip('\n\r')
            l = line.split(" ")
            if((len(l) == 2) or (len(l) == 3)):
                addLabelAdr(int(l[0], 16), l[1], "sub") # adr, name
    
    if filename_starts != "":
        with open(filename_starts) as f:
            content = f.readlines()
        for line in content:
            #if line.find(" ") != -1:
            #    adr = int(line.split(" ")[0], 16)
            adr = int(line, 16)
            addLabelAdr(adr, "sub_" + hex(adr)[2:-1:], "sub")
    
    print(cmd + ': ' + filename)
    filelist.sort()
    #print("filelist: " + str(filelist))
    if cmd == "ppc":
        dis.initialize(filename, base_address)
        output = dis.unpack_sseq_file(filename, base_address, start_address, outfilename, debug=debugFlag)
    print output
