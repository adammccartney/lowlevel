#!/usr/bin/pyhton3

INT_MAX = 2147483647
INT_MIN = -INT_MAX - 1

def optarithmult(x : int) -> int:
    t = x
    y = x << 5
    z = y - t
    return z

def optarithdiv(y : int) -> int:
    if (y < 0): y += 7
    z = y >> 3
    return z


def combine(x, y) -> None:
    a = optarithmult(x)
    b = optarithdiv(y)
    print(a + b)


def reveng(x, y, N) -> None:
    M = 31
    res = x * M + y / N
    print(res)

def main():
    for x in [3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 43]:
        reveng(5, 5, x)

if __name__ == '__main__':
    main()

