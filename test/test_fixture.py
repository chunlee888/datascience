import pytest

@pytest.fixture(autouse=True)
def before():
    print('\nsetup...')
    yield
    print('\nteardown...')

def test_a(before):
    print('\ntest_a')

def test_b():
    print('\ntest_b')

def test_c(before):
    print('\ntest_c')
