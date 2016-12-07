class Foo
  def __init__(self, bar):
    self.bar = bar

  def fib(self, n):
    if n < 2:
        return n
    else:
        return fib(n-1) + fib(n-2)
