# Binary Tree 

This project creates methods to (1) build a binary tree data structure from some arbitrary input array, (2) perform a breadth-first search, and (3) perform a depth-first search. 

A [binary search tree](https://en.wikipedia.org/wiki/Binary_search_tree) is a type of ordered or sorted [binary tree](https://en.wikipedia.org/wiki/Binary_tree); before modern computer science terminology, binary trees were called **bifurcating arborescence**, which is clearly the far superior term.  

When building a binary search tree from an unordered array, a simplifying assumption is made to take the first array value as the root of the binary search tree. Then, values that are less than the root are placed to the right of the root, and values that are greater than the root are placed to the left of the root, taking up immediate child positions where possible. This sorting feature makes the binary search tree much more efficient to search than its unordered relative, the binary tree. 

For example, given the array [7, 4, 23, 8, 9, 3] as input, the `#build_tree` method would construct the following binary search tree:

                        7 (root)
                      /   \
                     4    23
                    /     /                       
                   3     8
                          \
                           9



## Development versions
 - Ruby 2.5.3
 - RSpec 3.8

## Using this code

1. Fork this repository on GitHub.
2. Clone your forked reposity onto your local computer.
3. To run the tests, you need to have `rspec` installed.
 - First, check to see if `rspec` is already installed by typing `rspec --version` into the command line.
 - If the response is similar to the following, then you already have `rspec` installed and can continue.
 ~~~bash
 RSpec 3.8
  - rspec-core 3.8.0
  - rspec-expectations 3.8.2
  - rspec-mocks 3.8.0
  - rspec-support 3.8.0
~~~
 - If you do not see output similar to the above, then you need to install `rspec` by typing `gem install rspec` into the command line.
 - Now, run `rspec --version` again to ensure that it installed correctly.
4. Use`cd` to move into the main directory and then run `rspec` to show the tests.
