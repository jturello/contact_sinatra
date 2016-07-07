require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/email')
require('pry')
require('launchy')

get('/') do
  erb(:index)
end
# get('/contacts/new') do
#   erb(:contact_form)
# end
