require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]/).filter { |sentence| !sentence.empty? }.length
    # puts self
    
  end
end

"This is my string. For real. It is mine. Back off you!".count_sentences