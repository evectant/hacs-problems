# HACS Problems

A collection of problems with solutions for everyone interested in [HACS](https://github.com/crsx/hacs), but perhaps most useful to those taking the [compilers class](https://www.cs.nyu.edu/dynamic/courses/catalog/level/GA/#csci-ga2130) at NYU.

## Installation

Make sure you have HACS [installed](https://github.com/crsx/hacs#how-to-install), then clone the repository:

```text
$ git clone https://github.com/evectant/hacs-problems.git
```

## Usage

Use `check problems` to find the next unsolved problem in the recommended order:
```text
$ ./check problems
Checking lists/IsEmpty.hx
  Failing tests
  ./check lists/IsEmpty.hx
```

Use `check <problem>` to see the failing tests:

```text
$ ./check lists/IsEmpty.hx
Compiling lists/IsEmpty.hx
Running tests from lists/IsEmptyTest.csv
Test 1 failed
  ./lists/IsEmpty.run --scheme=IsEmpty --term=''
  Expect: True
  Actual: 
...
Passed 0/3 tests
```

Work on the problem until it passes the tests:
```text
$ edit lists/IsEmpty.hx
$ ./check lists/IsEmpty.hx 
Compiling lists/IsEmpty.hx
Running tests from lists/IsEmptyTest.csv
Test 1 passed
  ./lists/IsEmpty.run --scheme=IsEmpty --term=''
  Expect: True
  Actual: True
...
Passed 3/3 tests
```

Compare with the reference solution:
```text
$ view lists/IsEmptySolution.hx
```

Proceed to the next unsolved problem:
```text
$ ./check problems
Checking lists/IsEmpty.hx
Checking lists/HeadTail.hx
  Failing tests
  ./check lists/HeadTail.hx
```

You can also use `check list` to list all the problems and work on them in any order.

See `check help` for more options.
