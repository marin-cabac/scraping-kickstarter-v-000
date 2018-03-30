# require libraries/modules here
require 'nokogiri'
def create_project_hash
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  project.css("h2.bbcard_name strong a").text
end
