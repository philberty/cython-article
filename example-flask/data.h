#ifndef SERVER_H
#define SERVER_H

struct data {
  char name[10];
  int value;
};

extern struct data * getData (void);

#endif //SERVER_H
