#include "stdio.h"
#include "stdlib.h"
#include "greet.h"
#include "assert.h"

Greet * GreetInit(char* str){
  Greet *gt = (Greet*) malloc(sizeof(Greet));
  assert(gt);
  gt->str = str;
  return gt;
}

const char* GreetString(Greet* gt){
  assert(gt->str);
  return gt->str;
}
