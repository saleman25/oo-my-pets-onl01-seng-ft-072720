class Owner

attr_reader :species , :name

@@all = []

def initialize(name)
  @species = "human"
  @name = name 
  @@all << self
  say_species
end 
  
def self.all 
  @@all 
end 

def self.count 
  @@all.length 
end 

def self.reset_all 
  @@all.clear
end 
 
def say_species
 "I am a #{self.species}."
end 
 
def cats 
  Cat.all.select{|cat| cat.owner == self}
end 

def dogs
  Dog.all.select{|dog| dog.owner == self}
end 

def buy_cat(name) 
  Cat.new(name, self)
end 

def buy_dog(name)
  Dog.new(name, self)
end 

def walk_dogs
  self.dogs.each  { |dog| dog.mood = "happy" }
end 

def feed_cats
  self.cats.each  { |cat| cat.mood = "happy" }
end 

def sell_pets
  
end 

def list_pets
end 
  
  
end