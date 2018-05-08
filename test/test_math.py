import pytest

@pytest.mark.smoke
def test_add():
    x = 1 + 2
    assert x == 3

@pytest.mark.smoke
def test_multiply():
    x = 2 * 3
    assert x == 6

@pytest.mark.parametrize("test_input,expected", [
    ("3+5", 8),
    ("2+4", 6),
    ("6*9", 42),
])
def test_eval(test_input, expected):
    assert eval(test_input) == expected

@pytest.mark.smoke
class AClass:
   def test_a(self): pass
   def test_b(self): pass
