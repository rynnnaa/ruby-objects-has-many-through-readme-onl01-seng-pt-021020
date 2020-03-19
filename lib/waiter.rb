class Waiter
  attr_accessor :name, :years
  attr_reader
  
  @@all = []
  
  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select {|meal|meal.waiter == self}
  end
  
  def best_tipper
<<<<<<< HEAD
    best_tipped = meals.max do |meal1, meal2|
=======
    best_tipped = meals.tip.max do |meal1, meal2|
>>>>>>> 59ed350263ba991ef63d942f04cfd31e57f308a3
      meal1.tip <=> meal2.tip
    end
    best_tipped.customer
  end
end