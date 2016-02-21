class Substring

  def substrings(search_query, dictionary)
    @look_up = {}
    @split_query = search_query.split("")
    dictionary.each { |entry|
      @cursor_a = 0
      @count = 0
	while @cursor_a < @split_query.length
	  @cursor_b = @cursor_a
	  while @cursor_b < @split_query.length
	    @highlighted = @split_query[@cursor_a..@cursor_b] 
	    if @highlighted.join.downcase == entry.downcase 
	      @count += 1  
	      @look_up[entry] = @count 
	    end
	    @cursor_b += 1
	  end
	  @cursor_a += 1
	end
    }
    @look_up
  end


end


