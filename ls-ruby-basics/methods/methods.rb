names = %w[Dave Sally George Jessica]
activities = %w[walking running cycling]

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(names.sample, activities.sample)
