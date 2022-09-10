#include <iostream>

extern "C" {
  #include "hello.h"
}

void Greeting(){
  std::cout << "Hello world" << std::endl;
}