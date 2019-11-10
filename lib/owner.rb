class Owner
   attr_reader :name, :species
   @@all = []
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def species
    @species = "human" 
  end 
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    all_cats = Cat.all.select {|cat| cat.owner == self}
    all_cats
  end
  
  def dogs
    all_dogs = Dog.all.select {|dog| dog.owner == self}
    all_dogs
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  
  def walk_dogs 
    
  end 
  
  def feed_cat 
    
  end 
end