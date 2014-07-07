class MainController < ApplicationController

def index
  
end


def search
  Hardworker.perform_async('Something_here', 5)
  render "/main/results"
end






end
