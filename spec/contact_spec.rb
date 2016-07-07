require('rspec')
require('contact')

describe('Contact') do
  describe('#initialize') do

    it('instantiates a contact object') do
      contact = Contact.new({:first_name => "Some"})
      expect(contact.class).to eq(Contact)
    end

    it('instantiates a contact with a first name') do
      contact = Contact.new({:first_name => "Some"})
      expect(contact.first_name()).to eq("Some")
    end

    it('instantiates a contact with a last name') do
      contact = Contact.new({:last_name => "Dude"})
      expect(contact.last_name()).to eq("Dude")
    end

    it('instantiates a contact with a job title') do
      contact = Contact.new({:job_title => "Teacher"})
      expect(contact.job_title()).to eq("Teacher")
    end

    it('instantiates a contact with a company') do
      contact = Contact.new({:company => "Epicodus"})
      expect(contact.company()).to eq("Epicodus")
    end

    it('instantiates a contact with an id') do
      contact = Contact.new({:id => 1})
      contact.save()
      expect(contact.id()).to eq(1)
    end
  end


end
