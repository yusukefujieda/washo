class Scraping
 def self.shop_urls
  agent = Mechanize.new
  links = []
  next_url= "http://tabelog.com/rstLst/washoku/"
  while true
    current_page = agent.get(next_url)
    elements = current_page.search('.list-rst__rst-name-wrap p a')
    elements.each do |ele|
     links << ele.get_attribute('href')
    end
   next_link = current_page.at('.page-move__target.page-move__target--next')
   next_url = next_link.get_attribute('href')
   break unless next_url
  end

  links.each do |link|
   get_product('http://tabelog.com/rstLst' + link)
  end
 end

 def self.get_product(link)
  agent = Mechanize.new
  page = agent.get(link)
  name= page.at('.clearfix .display-name').inner_text
  text = page.at('#contents-maintext h3').inner_text
  image = page.at('.mainphoto-box img')[:src] if page.at('.mainphoto-box img')
  shop = Shop.where(name: name,text: text, image: image).first_or_initialize
  shop.save
 end
end