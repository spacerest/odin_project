class CaesarCipher
  
  def initialize 
    @alphabet = ("a".ord.."z".ord).to_a
  end

  def codify(word, degree)
    @english = word 
    @caesar = @english.split("").map! { |i| @alphabet[@alphabet.index(i.ord + degree)].chr}
    #@caesar.map! { |i| i.to_i.chr } 
  end

  def result
    @caesar.join
  end

end
