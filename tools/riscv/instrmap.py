#!/usr/bin/env python3
import argparse
from dataclasses import dataclass

from typing import Literal

__doc__ = "Hash map to look up riscv instructions based on their binary opcode"


@dataclass
class Encoding:
    iformat: Literal["R-type", "I-type", "S-type",
                     "SB-type", "U-type", "UJ-type"] | None
    instruction: str
    opcode: int
    funct3: int | None
    funct67: int | None

    def __str__(self):
        if self.iformat == "I-type":
            funct67_prec = '#08b'
        else:
            funct67_prec = '#09b'
        if self.iformat is not None:
            _iformat = self.iformat
        else:
            _iformat = ""
        _instruction = self.instruction 
        _opcode = format(self.opcode, '#09b')
        if self.funct3 is not None:
            _funct3 = format(self.funct3, '#05b')
        else:
            _funct3 = "n.a."
        if self.funct67 is not None:
            _funct67 = format(self.funct67, funct67_prec)
        else:
            _funct67 = "n.a."
        return "| {:8} | {:11} | {:9} | {:6} | {:9} |".format(_iformat,
                                                              _instruction,
                                                              _opcode,
                                                              _funct3,
                                                              _funct67)

def iformat(instruction: str | None):
    rtype = set(["add", "sub", "sll", "xor", "srl",
                 "sra", "or", "and", "lr.d", "sc.d"])
    itype = set(["lb", "lh", "lw", "ld", "lbu",
                 "lhu", "lwu", "addi", "slli", "xori", 
                 "srli", "srai", "ori", "andi", "jalr"])
    stype = set(["sb", "sh", "sw", "sd"])
    sbtype = set(["beq", "bne", "blt", "bge", "bltu", "bgeu"])
    utype = set(["lui", "auipc"])
    ujtype = set(["jal"])

    if instruction in rtype:
        return "R-type"
    elif instruction in itype:
        return "I-type"
    elif instruction in stype:
        return "S-type"
    elif instruction in sbtype:
        return "SB-type"
    elif instruction in utype:
        return "U-type"
    elif instruction in ujtype:
        return "UJ-type"
    else:
        return None


def parse_number(number: str):
    "Number can be in decimal, binary, octal or hexadecimal"
    if number.startswith("0b"):
        return int(number[2:], 2)
    elif number.startswith("0x"):
        return int(number[2:], 16)
    elif number.startswith("0o"):
        return int(number[2:], 8)
    else:
        return int(number)


# print encoding with variable number of args 
def format_print_encoding(*icodes):
    "Displays the details of a particualr riscv instruction"
    row = "| {:8} | {:10} | {:9} | {:6} | {:9} |" 
    header = row.format("Format", "Instruction", "Opcode", "Funct3", "Funct6/7")
    print(header)
    for icode in icodes:
        assert isinstance(icode, Encoding), "Error, must be an icode"
        print(icode)

def format_print_instruction_names(opcode: int, instructions: list[str]):
    "Print out the list of instruction names"
    row = "| {:9} | {:11} "
    header = row.format("Opcode", "Instructions")
    print(header)
    op = f"{format(opcode, '#009b')}"
    names = "".join([f"{i}, " for i in instructions])
    fnames = names.rstrip(", ")
    body = row.format(op, fnames)
    print(body)


def format_print_instruction_type(names: list[str]):
    "Print out the list of instruction names"
    row = "| {:8} | {:10} | {:9} | {:6} | {:9} |" 
    header = row.format("Format", "Instruction", "Opcode", "Funct3", "Funct6/7")
    print(header)
    for name in names:
        icode = get_icode_encoding(name)
        print(icode)


instruction_map = {}
instruction_map.update({
    "add": Encoding(iformat("add"), "add", 0b0110011, 0b000, 0b0000000),
    "sub": Encoding(iformat("sub"), "sub", 0b0110011, 0b000, 0b0100000),
    "sll": Encoding(iformat("sll"), "sll", 0b0110011, 0b001, 0b0000000),
    "xor": Encoding(iformat("xor"), "xor", 0b0110011, 0b100, 0b0000000),
    "srl": Encoding(iformat("srl"), "srl", 0b0110011, 0b101, 0b0000000),
    "sra": Encoding(iformat("sra"), "sra", 0b0110011, 0b101, 0b0100000),
    "or": Encoding(iformat("or"), "or", 0b0110011, 0b110, 0b0000000),
    "and": Encoding(iformat("and"), "and", 0b0110011, 0b110, 0b0000000),
    "lr.d": Encoding(iformat("lr.d"), "lr.d", 0b0110011, 0b011, 0b0001000),
    "sc.d": Encoding(iformat("sc.d"), "sc.d", 0b0110011, 0b011, 0b0001100),
    "lb": Encoding(iformat("lb"), "lb", 0b0000011, 0b000, None),
    "lh": Encoding(iformat("lh"), "lh", 0b0000011, 0b001, None),
    "lw": Encoding(iformat("lw"), "lw", 0b0000011, 0b010, None),
    "ld": Encoding(iformat("ld"), "ld", 0b0000011, 0b011, None),
    "lbu": Encoding(iformat("lbu"), "lbu", 0b0000011, 0b100, None),
    "lhu": Encoding(iformat("lhu"), "lhu", 0b0000011, 0b101, None),
    "lwu": Encoding(iformat("lwu"), "lwu", 0b0000011, 0b110, None),
    "addi": Encoding(iformat("addi"), "addi", 0b0010011, 0b000, None),
    "slli": Encoding(iformat("slli"), "slli", 0b0010011, 0b001, 0b000000),
    "xori": Encoding(iformat("xori"), "xori", 0b0010011, 0b100, None),
    "srli": Encoding(iformat("srli"), "srli", 0b0010011, 0b101, 0b000000),
    "srai": Encoding(iformat("srai"), "srai", 0b0010011, 0b101, 0b010000),
    "ori": Encoding(iformat("ori"), "ori", 0b0010011, 0b110, None),
    "andi": Encoding(iformat("andi"), "andi", 0b0010011, 0b111, None),
    "jalr": Encoding(iformat("jalr"), "jalr", 0b1100111, 0b000, None),
    "sb": Encoding(iformat("sb"), "sb", 0b0100011, 0b000, None),
    "sh": Encoding(iformat("sh"), "sh", 0b0100011, 0b001, None),
    "sw": Encoding(iformat("sw"), "sw", 0b0100011, 0b010, None),
    "sd": Encoding(iformat("sd"), "sd", 0b0100011, 0b111, None),
    "beq": Encoding(iformat("beq"), "beq", 0b1100011, 0b000, None),
    "bne": Encoding(iformat("bne"), "bne", 0b1100011, 0b001, None),
    "blt": Encoding(iformat("blt"), "blt", 0b1100011, 0b100, None),
    "bge": Encoding(iformat("bge"), "bge", 0b1100011, 0b101, None),
    "bltu": Encoding(iformat("bltu"), "bltu", 0b1100011, 0b110, None),
    "bgeu": Encoding(iformat("bgeu"), "bgeu", 0b1100011, 0b111, None),
    "lui": Encoding(iformat("lui"), "lui", 0b0110111, None, None),
    "auipc": Encoding(iformat("auipc"), "auipc", 0b0010111, None, None), 
    "jal": Encoding(iformat("jal"), "jal", 0b1101111, None, None),
    })


# Map opcodes to instruction names
opcode_to_instruction = {}
for instruction, encoding in instruction_map.items():
    opcode = encoding.opcode
    if opcode is not None:
        if opcode not in opcode_to_instruction:
            opcode_to_instruction[opcode] = []
        opcode_to_instruction[opcode].append(instruction)


# Map intruction types to instruction instruction names 
format_to_instruction = {}
for instruction, encoding in instruction_map.items():
    iformat = encoding.iformat
    if iformat is not None:
        if iformat not in format_to_instruction:
            format_to_instruction[iformat] = []
        format_to_instruction[iformat].append(instruction)


def get_icode_encoding(instruction):
    "Returns that instruction code encoding for a given instruction"
    global instruction_map
    return instruction_map.get(instruction) 

def get_opcode_encoding(opcode):
    "Returns all instruction names for a given opcode"
    global opcode_to_instruction
    return opcode_to_instruction.get(opcode)

def get_encoding_format(iformat):
    "Returns all instruction names for a given type"
    global format_to_instruction
    return format_to_instruction.get(iformat)
    
def getargs():
    parser = argparse.ArgumentParser(description='Displays the details of a riscv instruction')
    # aggregate arguments after instruction flag into list
    parser.add_argument('-i', '--instruction', nargs='+', type=str, default=None,
                        help='The instruction to display')
    parser.add_argument('-f', '--format', type=str, default=None,
                        help='The type of instruction to display')
    parser.add_argument('-o', '--opcode', type=str, default=None,
                        help='Give an opcode that you want to query')
    result = parser.parse_args()
    return result

def main():
    args = getargs()
    # if instruction was given, display the details of the instruction 
    if args.instruction:
        instructions = args.instruction
        icodes = []
        for instr in instructions:
            icodes.append(get_icode_encoding(instr))
        format_print_encoding(*icodes)
    if args.format:
        iformat = args.format
        names = get_encoding_format(iformat)
        if names is not None:
            format_print_instruction_type(names)
    if args.opcode:
        opcode_raw = parse_number(args.opcode)
        names = get_opcode_encoding(opcode_raw)
        if names is not None:
            format_print_instruction_names(opcode_raw, names)
    
if __name__ == '__main__':
    main()
