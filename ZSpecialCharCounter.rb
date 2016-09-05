#!/usr/bin/ruby
ss = "OCaml's toolset includes an interactive top-level interpreter, a bytecode compiler, a reversible debugger, a package manager (OPAM), and an optimizing native code compiler. "
s = Time.now
i = 0
while i < 100000
  ss.count(",")
  i = i + 1;
end
e = Time.now
puts e - s