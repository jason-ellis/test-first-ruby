class Book
  LITTLE = %w[and in the of a an]

  def title=(title)
    @title = title.split.map { |x| LITTLE.include?(x) ? x : x.capitalize }.join(' ')
    @title = @title.slice(0,1).capitalize + @title.slice(1..-1)
  end

  def title
    @title
  end

  end