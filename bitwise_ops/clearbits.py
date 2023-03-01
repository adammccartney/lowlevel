#!/usr/bin/python3
import sys

__doc__ = """clearbits: clear n bits starting at position p"""

def clearbits(x, p, n):
    # possibly also: x ^ (~(~0 << n) << (p+1-n))
    return x & ~(~(~0 << n) << (p+1-n))

if __name__ == '__main__':
    if (len(sys.argv) != 4):
        print(__doc__)
        print("usage: python3 clearbits <position> <numbits>")
    ret = clearbits(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))
    print(ret)
