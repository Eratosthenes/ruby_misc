class User
  attr_accessor :name

  def name=(val)
    @name = val.capitalize
  end

  def name
    "Dearest "+@name
  end
end

user = User.new
user.name = "bob"
puts user.name #"Dearest Bob"

