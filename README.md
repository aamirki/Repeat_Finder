# Repeat_Finder
Finds how many times a value occurs in a list, with different running times based on recursive and iterative solutions

This project is to help me understand running times for my Algorithms and Data Structures class

Contains four methods in the Repeat_Finder class:
   - Two that recursively solve the problem
      - One with a running time of O(n) that checks the first element of the given list and determines if it is 
        equal to the target value then recurs on the remainder of the array
      - One with a running time of O(logn) that checks the middle value of a sorted list and recurs onto the 
      appropriate half of the list if it does not find a match to the target value
   - Two that iteratively solve the problem
      - One with a running time of O(n) that goes through every value in the given list and determines if the 
        value is equal to the target value
      - One with a running time of O(logn) that goes to the middle of a sorted list and, if removes the 
        appropriate half of the array from consideration if it does not find a match to the target value
