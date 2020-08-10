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

def buy_cat 
  Cat.new(name, owner)
end 

def buy_dog
  Dog.new(name, owner)
end 

def walk_dogs
  
end 

def feed_cats
  
end 

def sell_pets
  
end 

def list_pets
end 
  
  
end