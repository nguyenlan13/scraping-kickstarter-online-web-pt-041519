<<<<<<< HEAD
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  
  projects = {}
  
  
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
    
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end
  projects
end
=======
# require libraries/modules here
require 'nokogiri'
require 'pry'

class Project
  
  attr_accessor :title, :image_link, :description, :location, :percent_funded

  @@project = {}
  
  def initialize
    @@projects << self
  end

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  # projects: kickstarter.css("li.project.grid_4")
  binding.pry
end
end
create_project_hash
>>>>>>> 3a02fea19009df9519c983dc3f07f8e2bfbfb559
