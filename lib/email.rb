class Email
  attr_reader :address

  define_method(:initialize) do |attributes|
    @address = attributes[:address]
  end
  
end
