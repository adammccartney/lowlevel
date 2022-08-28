from subprocess import Popen, PIPE

TSUB_OK_PATH = '/home/adam/Code/csapp/problems/arithmetic/build/taddok'
INT_MAX = 2147483647
INT_MIN = -INT_MAX - 1


def test_sub_0() -> None:
    p = Popen([TSUB_OK_PATH, '0', '0'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

def test_limits_overflow() -> None:
    p = Popen([TSUB_OK_PATH, str(INT_MIN), str(INT_MAX)], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == -1, error

def test_limits_small_overflow() -> None:
    p = Popen([TSUB_OK_PATH, str(INT_MIN), '1'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == -1, error

def test_tricky_limits_overflow() -> None:
    p = Popen([TSUB_OK_PATH, str(INT_MIN / 2), str((INT_MAX))], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == -1, error

def test_one_inthemiddle_overflow() -> None:
    p = Popen([TSUB_OK_PATH, '-1', str((INT_MAX))], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == -1, error

def main():
    test_sub_0()
    test_limits_overflow()

if __name__ == '__main__':
    main()
