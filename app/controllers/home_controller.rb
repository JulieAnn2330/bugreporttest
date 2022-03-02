class HomeController < ApplicationController
    def index
    end
  
    def about
      # This works but it just may be best to write on the about.html.erb for formatting
      @best_bug_writing_practices = "Text"
    end
    
  end