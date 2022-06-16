require './lib/caesar_cipher.rb'

describe Caesar do
  describe "one letter" do
    it "a returns d" do
      example = Caesar.new
      expect(example.caesar_cipher('a', 3)).to eql('d')
    end

    describe "number" do
      it "5 returns you didn't enter a string" do
        example = Caesar.new
        expect(example.caesar_cipher(5, 3)).to eql("You didn't enter a string")
      end
    end

      
  end

  
end