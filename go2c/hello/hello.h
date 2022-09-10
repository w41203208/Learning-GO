#ifndef HELLO_H_
#define HELLO_H_

struct greet_t {
  char* str;
};

typedef struct greet_t Hello;

void SayHello();
void PrintArray(int* test);
// #ifdef __cplusplus
// extern "C" {
// #endif
//   void Greeting();
// #ifdef __cplusplus
// }
// #endif

#endif // HELLO_H_