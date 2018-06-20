class PagesController < ApplicationController
    #GET request for / which is home page
    def home
        @basic_plan = Plan.order('id').first
        @pro_plan = Plan.order('id').last
    end
    
    def about
    end
end