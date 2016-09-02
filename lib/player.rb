class Player

  attr_reader :name, :hp

  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attack
    @hp -= DEFAULT_DAMAGE
  end

end
