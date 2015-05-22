class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end
  
  def words
    @text.split.map do |word|
      word.downcase.gsub(/[^a-z-]/, '')
    end
  end

  def word_count
    words.count
  end

  def sorted_unique_words
    words.uniq.sort
  end
end


