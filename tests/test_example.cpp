// test_example.cpp
//
// Author: David Jourdan (david.jourdan@inria.fr)
// Created: 06/09/20

#include "catch.hpp"
#include "starter/start.h"

TEST_CASE("Example", "[example]")
{
  SECTION("Section")
  {
    CHECK(1 == 1);
  }
}
