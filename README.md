# C++ Starter project
[![](https://github.com/DavidJourdan/cpp-starter-project/workflows/Build/badge.svg)](https://github.com/DavidJourdan/cpp-starter-project/actions)
[![codecov](https://codecov.io/gh/DavidJourdan/cpp-starter-project/branch/master/graph/badge.svg)](https://codecov.io/gh/DavidJourdan/cpp-starter-project)

Uses CMake, Catch2 for unit tests, and optionally Eigen if you uncomment the corresponding lines in starter.cmake

This template also supports CI with github actions (see .github/workflow/build.yml)

## Build instructions

``` 
cmake -Bbuild -DBUILD_TESTS=ON -DBUILD_EXAMPLE=ON
cmake --build build
```

And you can then run the example project in ``` build/example/example ``` and the unit tests in ``` build/tests/test_example ```
