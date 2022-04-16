family = { uncles: %w[bob joe steve],
           sisters: %w[jane jill beth],
           brothers: %w[frank rob david],
           aunts: %w[mary sally susan]
}

result = family.select { |k, _| %i[sisters brothers].include?(k) }

p result.values.flatten
