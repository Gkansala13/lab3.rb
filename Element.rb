class Element 
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def compare_to(name)
    fail "This method should be overridden"
  end
end

class Rock<Element
  def compare_to(init_type)
    if init_type.instanceof?(Rock) == Rock 
  	  return "Rock equals Rock","Tie"
    elsif init_type.instanceof?(Rock) == Paper
	    return "Rock gets covered by Paper","Lose"
		elsif init_type.instanceof?(Rock) == Spock
	  	return "Rock gets vaporized by Spock","Lose"
    elsif init_type.instanceof?(Rock) == Scissors
		  return "Rock crushes Scissors","Win"
 		elsif init_type.instanceof?(Rock) == Lizard
  		return "Rock crushes Lizard","Win"
	  else
		  fail "This method should be overridden"
    end
  end
end

class Paper<Element
  def compare_to(init_type)
    if init_type.instanceof?(Paper) == Paper
		  return "Paper equals Paper","Tie"
    elsif Rock == init_type.instanceof?(Paper)
	 		return "Paper covers Rock","Win"
    elsif init_type.instanceof?(Paper) == Rock
  		return "Paper covers Rock","Win"
    elsif init_type.instanceof?(Paper) == Spock
	  	return "Paper disproves Spock","Win"
    elsif init_type.instanceof?(Paper) == Scissors
	 		return "Paper gets cut by Scissors","Lose" 
    elsif init_type.instanceof?(Paper) == Lizard
  		return "Paper gets eaten by Lizard","Lose" 
	 	else
	  	fail "This method should be overridden"
    end
  end
end

class Scissors<Element
  def compare_to(init_type)
    if init_type.instanceof?(Scissors) == Scissors
      return "Scissors equals Scissors","Tie"
    elsif init_type.instanceof?(Scissors) == Paper
      return "Scissors cuts Paper","Win" 
    elsif init_type.instanceof?(Scissors) == Spock
      return "Scissors get smashed by Spock","Lose"
    elsif init_type.instanceof?(Scissors) == Rock
      return "Scissors get crushed by Rock","Lose"
    elsif init_type.instanceof?(Scissors) == Lizard
      return "Scissors decapitate Lizard","Win"
    else
      fail "This method should be overridden"
    end
  end
end

class Lizard<Element
  def compare_to(init_type)
    if init_type.instanceof?(Lizard) == Paper
	    return "Lizard eats Paper","Win"
    elsif init_type.instanceof?(Lizard) == Rock
 	    return "Lizard gets crushed by Rock","Lose"
    elsif init_type.instanceof?(Lizard) == Spock
		  return "Lizard poisons Spock","Win"
    elsif init_type.instanceof?(Lizard) == Scissors
  	  return "Lizard gets decapitated by Scissors","Lose" 
	  elsif init_type.instanceof?(Lizard) == Lizard
 		  return "Lizard equals Lizard","Tie"
    else
	    fail "This method should be overridden"
    end
  end
end
class Spock<Element
  def compare_to(init_type)
	  if init_type.instanceof?(Spock) == Paper
		  return "Spock gets disproven by Paper","Lose"
    elsif init_type.instanceof?(Spock) == Rock
  		return "Spock vaporizes Rock","Win"
	  elsif init_type.instanceof?(Spock) == Spock
 			return "Spock equals Spock","Tie"
    elsif init_type.instanceof?(Spock) == Scissors
  		return "Spock smashes Scissors","Win"
 		elsif init_type.instanceof?(Spock) == Lizard
  		return "Spock gets poison by Lizard","Lose"
	  else
		  fail "This method should be overridden"
    end
  end
end
moves = [Rock.new, Paper.new, Scissors.new, Spock.new, Lizard.new]

rock = Rock.new('Rock')
paper = Paper.new('Paper')
puts rock.compare_to(paper)
puts paper.compare_to(rock)
puts rock.compare_to(rock)


