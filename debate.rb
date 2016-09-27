trump = {}
trump_reg = /^TRUMP:/
clinton = {}
clinton_reg = /^CLINTON:/
debate_text_file = ARGV.shift
file = File.open(File.join(Dir.pwd, debate_text_file), 'r')
text = ""
fun = ->(cand, reg, text) do
  text.sub(reg, '').split.each do |str|
    next unless str =~ /\w/
    cand[str.downcase] ||= 0
    cand[str.downcase] += 1
  end
end
while text = file.gets
  text = text.chomp
  if text =~ trump_reg
    fun.(trump, trump_reg, text)
  elsif text =~ clinton_reg
    fun.(clinton, clinton_reg, text)
  end
end

file.close

file = File.open("word_frequencies_#{debate_text_file.sub(/\..*$/, '')}.md", "w+")
file.puts "### TRUMP"
file.puts "word   |  frequency"
file.puts "--- | ---"
file.puts trump.invert.sort.last(20).map { |(x,y)| "#{x}  | #{y}" }
file.puts "\n\n\n"
file.puts "### CLINTON"
file.puts "word   |  frequency"
file.puts "--- | ---"
file.puts clinton.invert.sort.last(20).map { |(x,y)| "#{x}  | #{y}" }
file.close
