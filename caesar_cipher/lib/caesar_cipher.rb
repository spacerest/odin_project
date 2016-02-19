class CaesarCipher
  
  def initialize 
    @alphabet_down = ("a".ord.."z".ord).to_a
    @alphabet_up = ("A".ord.."Z".ord).to_a
  end

  def codify(word, degree)
    @caesar = word.split("").map! { |i| i == i.upcase ? (@alphabet_up[(@alphabet_up.index(i.ord) + degree) % 26]).chr : (@alphabet_down[(@alphabet_down.index(i.ord) + degree) % 26]).chr}
    @caesar = @caesar.join
  end

  def result
    @caesar
  end

end
