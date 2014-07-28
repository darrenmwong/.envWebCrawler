class MainController < ApplicationController

def index
  
end


def search
  @link = params[:github]
  puts @link
  Hard_worker.perform_async('Something_here', 5)
  render "/main/results"
end






end
