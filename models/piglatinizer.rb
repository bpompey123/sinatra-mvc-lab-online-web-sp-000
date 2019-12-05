class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def translate(string)
    vowels = ["a","e","i","o","u"]
    alphabet = ("a".."z")
    consonant = alphabet - vowels

    string_split = string.split

    string_split.map! do |w|
      if vowels.include?(w[0])
        w + 'ay'
      elsif consonant.include?(w[0]) && consonant.include?(w[1])
        w [2..-1] + w [0..1]+ 'ay'
      elsif w [0..1] == "qu"
        w[2..-1] + "quay"
      elsif w[0..2] == "thr"
        w [3..-1]+"thray"
      elsif w[0..2]== "sch"
        w[3..-1]+"schay"
      elsif consonants.include?(w[0])
        w[ 1..-1] + w[0..0] + 'ay'
      end
    end

    return string_split.join(" ")
  end

end
