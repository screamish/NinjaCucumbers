# ninja!
class Ninja
  def initialize (belt_level)
    @belt=belt_level
  end
  
  def attacked_by (opponent)
    if(@belt) != "third"
      return ["run for his life"]
    end
    if(opponent=="Chuck Norris")
      return ["run for his life"]
    else
      return ["engage the opponent"]
    end
  end
  
  def belt?
    @belt
  end
end