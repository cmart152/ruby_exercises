require './lib/caesar_cipher.rb'

describe Caesar do
  describe "one letter" do
    it "a returns d" do
      example = Caesar.new
      expect(example.caesar_cipher('a', 3)).to eql('d')
    end
  end

  describe "multiple letters" do
    it "hello returns khoor" do
      example = Caesar.new
      expect(example.caesar_cipher('hello', 3)).to eql('khoor')
    end
  end

  describe "number" do
    it "5 returns you didn't enter a string" do
      example = Caesar.new
      expect(example.caesar_cipher(5, 3)).to eql("You didn't enter a string")
    end
  end

  describe "number" do
    it "mixture of letters and numbers returns message" do
      example = Caesar.new
      expect(example.caesar_cipher("hello johnny 5", 3)).to eql("You need to enter letters between A-Z and a-z")
    end
  end

  describe "other characters" do
    it "[]%4 returns message " do
      example = Caesar.new
      expect(example.caesar_cipher('[]%4', 3)).to eql('You need to enter letters between A-Z and a-z')
    end
  end
end