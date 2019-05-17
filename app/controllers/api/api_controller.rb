module Api
  class ApiController < ApplicationController

    ##============================================================##
    ## No csrf validation in the Api
    ##============================================================##
    skip_before_action :verify_authenticity_token

  end
end
