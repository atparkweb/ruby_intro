a = [1, 2, 3]

# Example method definition that mutates its argument permanently (Impure)
def mutate!(array)
  array.pop
end

def no_mutate(array)
  array.last
end

p "Before mutate method: #{a}"
no_mutate(a)
p "After mutate method: #{a}"
