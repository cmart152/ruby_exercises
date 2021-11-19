Class language
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end


ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description