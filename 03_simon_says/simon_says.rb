def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 0)
  count = 1
  if times == 0
    return string + ' ' + string
  else
    output = string + ' '
    until count == times do
      output += string + ' '
      count += 1
    end
    output.slice!(-1)
    output
  end
end

def start_of_word(word, letters)
  word.slice(0, letters)
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  words = string.split(' ')
  words.each do |x|
    if x.length > 3
      x.capitalize! unless (x == 'over')
    end
  end
  words[0].capitalize!
  words.join(' ')
end