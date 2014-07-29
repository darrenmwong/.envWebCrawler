class MainController < ApplicationController

def index
  
end


def search
  @link = params[:github]
  Hardworker.perform_async(@link, 1)
  render "/main/results"
end






end
