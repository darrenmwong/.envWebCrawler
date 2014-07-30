class MainController < ApplicationController

def index
  
end


def search
  @link = params[:github]
  @github_doc = Nokogiri::HTML(Typhoeus.get(@link).body)
  puts @github_doc
  # Hardworker.perform_async(@link, 1)
  render "/main/results"
end






end
