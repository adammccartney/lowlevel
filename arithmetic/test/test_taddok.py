from subprocess import Popen, PIPE

TADD_OK_PATH = '/home/adam/Code/csapp/problems/arithmetic/build/taddok'
INT_MAX = 2147483647
INT_MIN = -INT_MAX - 1


def test_add_0() -> None:
    p = Popen([TADD_OK_PATH, '0', '0'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

def test_add_two_negative_ints() -> None:
    p = Popen([TADD_OK_PATH, '-1', '-1'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

def test_overflow_detection_stdin() -> None:
    p = Popen([TADD_OK_PATH, '2347839274', '2349308247'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    print(res)
    print(error)
    assert int(res) == -1, error 

def test_ints_within_range() -> None:
    # Tests that each of the two ints is less than half of INT_MAX
    p = Popen([TADD_OK_PATH, '10000000', '10000000'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

def test_truncated_values() -> None:
    p = Popen([TADD_OK_PATH, '214748364', '214748364'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    assert int(res) == 1, error

def test_big_negative_truncated_values() -> None:
    p = Popen([TADD_OK_PATH, '999999999', '-99999999'], stdout=PIPE, stderr=PIPE)
    res, error = p.communicate()
    print(res)
    print(error)
    assert int(res) == 1, error

def main():
    test_add_0()
    test_add_two_negative_ints()
    test_overflow_detection_stdin()
    test_ints_within_range()
    test_truncated_values()

if __name__ == '__main__':
    main()
