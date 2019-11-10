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
    Dog.all.select do |dogs| dogs.owner == self 
    dogs.mood = "happy"
    end
  end 
  
  def feed_cats 
    Cat.all.select do |cats| cats.owner == self 
    cats.mood = "happy"
    end
  end 
  
  def sell_pets 
    Dog.all.select do |dogs| dogs.owner == self 
    dogs.mood = "nervous"
    end
     
    Dog.all.select do |dogs| dogs.owner == self 
    dogs.owner = nil
    end
     
    Cat.all.select do |cats| cats.owner == self 
    cats.mood = "nervous"
    end
    
    Cat.all.select do |cats| cats.owner == self 
    cats.owner = nil
    end
  end 
  
  def list_pets
   all_dogs = Dog.all.select {|dog| dog.owner == self}
   all_cats = Cat.all.select {|cat| cat.owner == self}
   
   "I have #{all_dogs.count} dogs(s), and #{all_cats.count} cat(s)."
  end 
end