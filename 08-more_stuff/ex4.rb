def execute(&block)
  name = "Andy"
  block.call(name)
end

execute { |name| puts "Hello #{name}" }
