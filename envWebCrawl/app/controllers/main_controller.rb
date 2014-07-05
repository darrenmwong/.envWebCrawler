class MainController < ApplicationController

def index
end


def search
  Hardworker.perform_async('Something_here', 5)
end






end
