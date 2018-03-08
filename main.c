#include <stdio.h>
#include "HsFFI.h"

#ifdef __GLASGOW_HASKELL__
#include "Entry_stub.h"
#endif

int main(int argc, char *argv[]) {
  hs_init(&argc, &argv);
  int n = foo(5);
  printf("n is %d\n", n);
  hs_exit();
  return 0;
}
