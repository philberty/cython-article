#include <Python.h>

#include <stdio.h>
#include <stdlib.h>

#include "data.h"
#include "flaskApp.h"

static struct data * record = NULL;

struct data * getData (void)
{
  static int callCount = 1;
  if (!record)
      record = malloc (sizeof (struct data));
  memset (record, 0, sizeof (*record));

  strncpy (record->name, "test", sizeof (record->name));
  record->value = callCount;

  callCount++;
  return record;
}

int main (int argc, char **argv)
{
  printf ("Initilizing Python Runtime...\n");
  Py_Initialize ();

  printf ("Importing Flask App...\n");
  initflaskApp ();

  printf ("Starting Flask App...\n");
  startFlaskApp ();

  printf ("Cleanup...\n");
  if (record)
    free (record);
  Py_Finalize ();

  return 0;
}
