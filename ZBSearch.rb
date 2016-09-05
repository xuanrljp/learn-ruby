#!/usr/bin/ruby
arr = (1..100000).to_a
#2016-08-31-11:23:31.731920000
#2016-08-31-11:23:31.841111000
#puts Time.now.strftime('%Y-%m-%d-%H:%M:%S.%9N')
s = Time.now
i = 0
while i < 100000
  arr.bsearch {|x| x == i }
  i = i + 1;
end
e = Time.now
#puts Time.now.strftime('%Y-%m-%d-%H:%M:%S.%9N')
puts e - s