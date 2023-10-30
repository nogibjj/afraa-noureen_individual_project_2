# test_main.py

import lib  # Import the library module
import unittest

class TestFactorialFunction(unittest.TestCase):

    def test_factorial(self):
        self.assertEqual(lib.factorial(0), 1)
        self.assertEqual(lib.factorial(5), 120)
        # Add more test cases here

if __name__ == '__main__':
    unittest.main()
