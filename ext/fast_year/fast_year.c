#include <ruby.h>
#include <time.h>

static VALUE
year()
{
  time_t t = time(NULL);
  struct tm *local = localtime(&t);

  return INT2NUM(local->tm_year + 1900);
}

void
Init_fast_year(void)
{
  VALUE module = rb_define_module("FastYear");

  rb_define_module_function(module, "year", year, 0);
}
