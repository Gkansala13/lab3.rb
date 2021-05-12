$MOVES = Array.new
class Element 
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def compare_to(init_type)
    fail "This method should be overridden"
  end
end

class Rock<Element
  def compare_to(init_type)
    if init_type.instance_of?(Rock) 
  	  return "Rock equals Rock","Tie"
    elsif init_type.instance_of?(Paper)
	    return "Paper covers Rock","Lose"
		elsif init_type.instance_of?(Spock)
	  	return "Spock vaporizes Rock","Lose"
    elsif init_type.instance_of?(Scissors)
		  return "Rock crushes Scissors","Win"
 		elsif init_type.instance_of?(Lizard) 
  		return "Rock crushes Lizard","Win"
    end
  end
end

class Paper<Element
  def compare_to(init_type)
    if init_type.instance_of?(Paper)
		  return "Paper equals Paper","Tie"
    elsif init_type.instance_of?(Rock) 
  		return "Paper covers Rock","Win"
    elsif init_type.instance_of?(Spock) 
	  	return "Paper disproves Spock","Win"
    elsif init_type.instance_of?(Scissors) 
	 		return "Scissors cut Paper","Lose" 
    elsif init_type.instance_of?(Lizard)
  		return "Lizard eats Paper","Lose" 
    end
  end
end

class Scissors<Element
  def compare_to(init_type)
    if init_type.instance_of?(Scissors)
      return "Scissors equals Scissors","Tie"
    elsif init_type.instance_of?(Paper) 
      return "Scissors cuts Paper","Win" 
    elsif init_type.instance_of?(Spock)
      return "Spock smashes Scissors","Lose"
    elsif init_type.instance_of?(Rock)
      return "Rock crushes Scissors","Lose"
    elsif init_type.instance_of?(Lizard)
      return "Scissors decapitate Lizard","Win"
    end
  end
end

class Lizard<Element
  def compare_to(init_type)
    if init_type.instance_of?(Paper)
	    return "Lizard eats Paper","Win"
    elsif init_type.instance_of?(Rock)
 	    return "Rock crushes Lizard","Lose"
    elsif init_type.instance_of?(Spock)
		  return "Lizard poisons Spock","Win"
    elsif init_type.instance_of?(Scissors)
  	  return "Scissors decapitate Lizard","Lose" 
	  elsif init_type.instance_of?(Lizard)
 		  return "Lizard equals Lizard","Tie"
    end
  end
end
class Spock<Element
  def compare_to(init_type)
	  if init_type.instance_of?(Paper)
		  return "Paper disproves Spock","Lose"
    elsif init_type.instance_of?(Rock)
  		return "Spock vaporizes Rock","Win"
	  elsif init_type.instance_of?(Spock)
 			return "Spock equals Spock","Tie"
    elsif init_type.instance_of?(Scissors)
  		return "Spock smashes Scissors","Win"
 		elsif init_type.instance_of?(Lizard)
  		return "Lizard poisons Spock","Lose"
    end
  end
end

$MOVES << paper = Paper.new("Paper")
$MOVES << scissors = Scissors.new("Scissor")
$MOVES << lizard = Lizard.new("Lizard")
$MOVES << spock = Spock.new("Spock")

rock = Rock.new('Rock')
paper = Paper.new('Paper')
puts rock.compare_to(paper)
puts paper.compare_to(rock)
puts rock.compare_to(rock)
 

