class Dog 
  
  @@all = []
   @@clear_all = []
  @@print_all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @@all << self
    @save = save
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.clear_all 
    @@all.clear 
  end 
  
  def self.print_all
    @@all.each do |x|
      puts x.name 
    end 
  end 
  
  def save=(save)
    @save = save   
  end 
  
  def save
    @@all << @save
  end 
  
end 