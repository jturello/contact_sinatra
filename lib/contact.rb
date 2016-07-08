class Contact
  attr_reader :first_name, :last_name, :job_title, :company, :id, :email
  @@contacts = []

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @job_title = attributes[:job_title]
    @company = attributes[:company]
    @id = @@contacts.length().+(1)
    @email = []

    # @last_name = attributes[:last_name]
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:add_email) do |email|
    @email.push(email)
  end

  define_singleton_method(:all) do
    @@contacts
  end




end
