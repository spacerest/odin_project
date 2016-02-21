class CaesarCipher
  
  def initialize 
    @alphabet_down = ("a".ord.."z".ord).to_a
    @alphabet_up = ("A".ord.."Z".ord).to_a
  end

  def codify(word, degree)
    @caesar = word.split("").map! { |i| 
      if isLetter?(i)
	if i == i.upcase  
	  (@alphabet_up[(@alphabet_up.index(i.ord) + degree) % 26]).chr 
	else 
	  (@alphabet_down[(@alphabet_down.index(i.ord) + degree) % 26]).chr
	end
      else 
	i 
      end}
    @caesar = @caesar.join
  end

  def isLetter?(i)
    i =~ /\w/ 
  end

  def result
    @caesar
  end

end
