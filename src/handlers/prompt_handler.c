#include <stdio.h>
#include <unistd.h>
#include "prompt_handler.h"

void print_prompt() {
  char cwd[1024];
  if (getcwd(cwd, sizeof(cwd)) != NULL) {
    printf("shell:%s> ", cwd);
  } else {
    printf("shell> ");
  }
  fflush(stdout);
}
