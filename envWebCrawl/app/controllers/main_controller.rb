class MainController < ApplicationController

require 'open-uri'

def index
  
end


def search
  #Parameters in search box showing github account name
  @link = params[:github]
  gitLink = "https://www.github.com/#{@link}?tab=repositories"
  #Web Crawling Getting HTML back from Github
  github_doc = Nokogiri::HTML(open(gitLink))
  #Search specific class traverse down to repository links
  @gitRepo = github_doc.search('.repo-tab')
  # Hardworker.perform_async(@link, 1)
  render "/main/results"
end






end
