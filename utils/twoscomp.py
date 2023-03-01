#!/usr/bin/env python3

# twoscomp.py: get the value of a string in two's complement notation

import sys 

def twoscomp_le(byte_value):
    return int.from_bytes(byte_value, byteorder='little', signed=False)


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: twoscomp <bytes>")
        print("Note: python3 represents bytes as b'\xff\xff\xff\x11'")
    byte_value = bytes(sys.argv[1], 'utf-8')
    ret = twoscomp_le(byte_value)
    print(ret)
