#!/usr/bin/ruby
# -*- coding: utf-8 -*-

=begin
概要
①rescueのデフォルトがStandardError、raiseのデフォルトがRuntimeErrorとなっています。
⇒独自例外を定義するときはStandardErrorを継承する方が望ましい
=end

# `Exception`ではなく
class MyError1 < Exception; end
# `StandardError`.
class MyError2 < StandardError; end


#class MyError1 < Exception; end

begin
  raise MyError1
rescue Exception => e
#rescue => e だと、MyError1 がrescue節でハンドリングされない
  puts "Exception handled! #{e}"
end

begin
  raise MyError2
rescue => e
#rescue => e だと、MyError1 がrescue節でハンドリングされない
  puts "Exception handled! #{e}"
end


=begin
RubyのException階層
Exception
    fatal
    SystemExit
    NoMemoryError
    ScriptError
        LoadError
        NotImplementedError
        SyntaxError
    SecurityError        # Ruby 1.9からはExceptionのサブクラス    
    SignalException
        Interrupt
    StandardError
        ArgumentError
        IOError
            EOFError
        IndexError
            StopIteration
        LocalJumpError
        NameError
            NoMethodError
        RangeError
            FloatDomainError
        RegexpError
        RuntimeError
        #SecurityError        # Ruby 1.9からはExceptionのサブクラス
        SystemCallError
            Errno::EXXXXX
        SystemStackError
        ThreadError
        TypeError
        ZeroDivitionError
=end
