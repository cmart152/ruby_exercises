class OrangeTree

  def initialize
    @height = 1
    @numberOfOranges = 0
    @age = 0
  end

  def oneYear
    @age+=1
    @height+=0.5
    if @age > 2 && @age <10
      @numberOfOranges = @age+5
      puts "Your tree grew #{@numberOfOranges} oranges this year and is #{@age} old!"
    elsif @age == 10
      puts "Your tree died :("
      exit
    else
      puts "Your tree is too young to grow any oranges yet"
    end
  end

  def countOranges
    puts "You currently have #{@numberOfOranges} on your tree"
  end

  def pickOrange
    @numberOfOranges-=1
    puts "You got a tasty orange there!, now there is #{@numberOfOranges} left on your tree"
  end
end

tree = OrangeTree.new

tree.oneYear
tree.oneYear
tree.oneYear
tree.oneYear
tree.pickOrange
tree.pickOrange
tree.countOranges
tree.pickOrange
tree.oneYear
tree.oneYear
tree.pickOrange
tree.countOranges
tree.oneYear
tree.oneYear
tree.oneYear
tree.oneYear
tree.oneYear
tree.oneYear
tree.oneYear
