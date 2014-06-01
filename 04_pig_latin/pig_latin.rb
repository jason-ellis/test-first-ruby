def translate(english)
  cons = ['a', 'e', 'i', 'o', 'u']
  words = english.split
  piggy = []
  words.each do |x|
    if cons.include? x.slice(0).downcase
      piggy.push(x + 'ay')
    elsif x.slice(0..1) == 'qu'
      piggy.push(x.slice(2..-1) + x.slice(0..1) + 'ay')
    elsif x.slice(0..2).include? 'qu'
      piggy.push(x.slice(3..-1) + x.slice(0..2) + 'ay')
    elsif (not cons.include? x.slice(0)) && (not cons.include? x.slice(1)) && (not cons.include? x.slice(2))
      piggy.push(x.slice(3..-1) + x.slice(0..2) + 'ay')
    elsif (not cons.include? x.slice(0)) && (not cons.include? x.slice(1))
      piggy.push(x.slice(2..-1) + x.slice(0..1) + 'ay')
    else
      piggy.push(x.slice(1..-1) + x.slice(0) + 'ay')
    end
  end
  piggy.join(' ')
end