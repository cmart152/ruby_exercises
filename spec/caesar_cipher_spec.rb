require './lib/caesar_cipher.rb'

describe caesar_cipher do
  describe "one letter" do
    it "a returns d" do
      cipher = Caesar_cipher.new
      expect(cipher.caesar_cipher('a', 3)).to eql('d')
    end
  end
end