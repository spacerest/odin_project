class CaesarCipher
  
  def initialize 
    @alphabet = ("a".ord.."z".ord).to_a
  end

  def codify(word, degree)
    @english = word 
    @caesar = @english.split("").map! { |i| @alphabet[@alphabet.index(i.ord + degree)].chr}
    @caesar = @caesar.join
  end

  def result
    @caesar
  end

end
