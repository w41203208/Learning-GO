#ifndef GREET_H_
#define GREET_H_

struct greet_t {
  char* str;
};

typedef struct greet_t Greet;
typedef struct greet_t Hello;


Greet * GreetInit(char* str);

const char* GreetString(Greet* gt);

#endif // GREET_H_