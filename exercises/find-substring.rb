# frozen-string-literal: true

def find_lab(word)
  puts word if /lab/ =~ word
end

['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear'].each do |word|
  find_lab(word)
end
