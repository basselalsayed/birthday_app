class Person

  attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def self.create
    @person = Person.new(name, day, month)
  end

  def self.instance
    @person
  end

end