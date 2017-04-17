#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class.
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)
  attr_reader :highest_wf_count
  attr_reader :highest_wf_words
  attr_reader :content
  attr_reader :line_number

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.
  def initialize (content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency()

  end
  #* calculate_word_frequency() - calculates result
  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
  def calculate_word_frequency()
    @highest_wf_count = 0
    @highest_wf_words = []
    words = @content.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    @highest_wf_count = frequency.values.max

    # find all words with max occurance
    @highest_wf_words << frequency.find_all{ |k, v| v==@highest_wf_count}.first(3)

  end
end

str = "I was 09809 home -- Yes ! yes ! You was"
lno = 0
lineAnalyzer = LineAnalyzer.new(str, lno)
# frequency = lineAnalyzer.calculate_word_frequency
# p lineAnalyzer.highest_wf_words
# p lineAnalyzer.highest_wf_count

#  Implement a class called Solution.
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute
  #  equal to the highest_count_across_lines determined previously.
  attr_reader :analyzers
  attr_reader :highest_count_across_lines
  attr_reader :highest_count_words_across_lines

  def initialize ()
    @analyzers = []
  end

  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines
  #* Create an array of LineAnalyzers for each line in the file
  def analyze_file()
    if File.exist? 'test.txt'
      count = 0
      File.foreach( 'test.txt' ) do |line|
        @analyzers << LineAnalyzer.new(line, count += 1)
      end
    end
  end

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the highest number of occurences of a word across all lines
  #and stores this result in the highest_count_across_lines attribute.
  #* identifies the words that were used with the highest number of occurrences
  #and stores them in print_highest_word_frequency_across_lines.

  def calculate_line_with_highest_frequency
    temp_array = []
    @highest_count_words_across_lines = []
    @analyzers.each do |obj|
      temp_array << obj.highest_wf_count
    end
    @highest_count_across_lines = temp_array.max

    @analyzers.each do |obj|
      if obj.highest_wf_count == @highest_count_across_lines
        @highest_count_words_across_lines << obj
      end
    end
  end

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the result in the following format

  def print_highest_word_frequency_across_lines
    @highest_count_words_across_lines.each do |obj|
      puts "#{obj.highest_wf_words[0]} (appears in line #{obj.line_number})"
    end
  end

end

solution = Solution.new()
solution.analyze_file
solution.calculate_line_with_highest_frequency
# p solution.analyzers
# p solution.highest_count_across_lines
# solution.print_highest_word_frequency_across_lines

solution.print_highest_word_frequency_across_lines

