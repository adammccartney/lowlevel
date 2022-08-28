from random import randint
from subprocess import Popen, PIPE

REVENG_PATH = '/home/adam/Code/csapp/problems/arithmetic/build/reveng'
INT_MAX = 2147483647
INT_MIN = -INT_MAX - 1

def test_small_factors() -> None:
    p = Popen([REVENG_PATH, '6', '7'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

