#include <stdio.h>
#include "hello.h"


void Greeting(){
  printf("Hello world");
}
void SayHello(Hello* hello){
  printf("this is in c.");
  printf("\n");
  printf(hello->str);
  printf("\n");
}

void PrintArray(int* test){
  *test = 12;
}

