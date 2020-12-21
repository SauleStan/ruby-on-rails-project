class AuthorsController < ApplicationController
    before_action :authenticate_author!

    # For different page look to the peeps who are logged in
    layout 'authors'
end
