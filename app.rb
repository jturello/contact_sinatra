require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/email')
require('pry')
require('launchy')

get('/') do
  @contacts_all = Contact.all()
  erb(:index)
end

post('/contacts') do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  contact = Contact.new({:first_name => @first_name, :last_name => @last_name})
  contact.save()
  @contacts_all = Contact.all()
  erb(:index)
end
# get('/contacts/new') do
#   erb(:contact_form)
# end
