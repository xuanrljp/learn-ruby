#!/usr/bin/ruby
# -*- coding: utf-8 -*-

#定数
module Const
  GAS_MAX = 500
  class Car
    GAS_MAX = 300
  end
end

class Foo
  FOO = 'FOO'       # クラス Foo の定数 FOO を定義(Foo::FOO)
end

puts '=============定数============='
p 'Const::GAS_MAX:' << Const::GAS_MAX

puts "\n\n=============UTF-8============="
utf = "a1日本語⭐️"
puts utf
puts utf.encoding
puts utf.length
puts utf.bytesize
