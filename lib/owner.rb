class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def say_species
    "I'm a #{species}"
  end

  def buy_fish
    fish = Fish.new(name)
    pets [:fishes] << fish
  end

  def buy_cat
    cat = Cat.new(name)
    pets [:cats] << cat
  end

  def buy_dog
    dog = Dog.new(name)
    pets [:dogs] << dog
  end

  def walk_dogs

  end

  def play_with_cats

  end

  def feed_fish

  end

  def sell_pets

  end

  def list_pets

  end

  def self.reset_all
    @@all.clear
  end
end
