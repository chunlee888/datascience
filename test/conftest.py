import pytest
import pprint
@pytest.fixture(scope='module',autouse=True)
def setup_a():
    print('\nsetup_a..')
    yield 
    print('\nteardown_a..')

def pytest_runtest_setup(item):
    # called for running each test in 'a' directory
    print ("\nsetting up", item)

def pytest_runtest_call(item):
    pprint.pprint(item)
    print("\ncalling test", item)


