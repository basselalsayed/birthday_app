class Person
  CURRENT_YEAR = Time.now.strftime("%Y").to_i
  CURRENT_DAY_OF_YEAR = Time.now.strftime("%j").to_i

  attr_reader :name

  def initialize(name, day, month)
    @name = name
    @day = day.to_i
    @month = month.to_i
  end

  def self.create(name, day, month)
    @person = Person.new(name, day, month)
  end

  def self.instance
    @person
  end

  def birthday
    Time.new(CURRENT_YEAR, @month, @day).strftime("%j").to_i
  end

  def days_until_birthday(today = CURRENT_DAY_OF_YEAR)
    birthday - today
  end

  def birthday_today?
    days_until_birthday == 0
  end
end