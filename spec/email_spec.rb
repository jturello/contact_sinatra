require('rspec')
require('email')

describe(Email) do
  describe('#initialize') do

    it "instantiates an email address" do
      email = Email.new({:address=> 'bugs@bunny.com'})
      expect(email.class).to eq(Email)
    end

    it('instantiates an email address with the email address provide') do
      email = Email.new({:address=> 'bugs@bunny.com'})
      expect(email.address()).to eq('bugs@bunny.com')
    end

    it('creates saves an email address ') do
    end
  end
end
