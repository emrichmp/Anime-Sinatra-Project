require './config/environment'

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

#in order to send PATCH and DELETE requests, I will need to add code here
use Rack::MethodOverride

#will mount other controllers w/ 'use'
use UsersController
use AnimeEntriesController
run ApplicationController
