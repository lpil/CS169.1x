def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  !! (s =~ /^[BCDFGHJKLMNPQRSTVXZWY]/i)
end

p starts_with_consonant?("D$(@#*&^$(&@^(@^*$")

def binary_multiple_of_4?(s)
  return false unless s.match /^-?[01]+$/
  s.to_i(2) % 4 == 0
end
