#include "tmp.h"

#include <stdio.h>

void
test_func(void *func, const char *name) {

  printf("Func : %p\n", func);
  printf("Name : %s\n", name);
  
  ((void(*)())func)();
}
