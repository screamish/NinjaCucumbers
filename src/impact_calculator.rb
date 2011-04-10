class ImpactCalculator
  def impact (ninja, opponent, weapon, target)
    if ninja.nil?
      raise "Ninja is not defined"
    end
    if opponent == "Chuck Norris"
      return "split"
    end
    return "not harmed"
  end
end