class BestMods2019::Mod
  
attr_accessor :name, :game, :url

def self.thisyear
self.scrape_mods
end

 def self.scrape_mods
    mods = []

    mods << self.scrape_mod1
    mods << self.scrape_mod2
    
    mods
  end

  def self.scrape_mod1
    doc = Nokogiri::HTML(open("https://steamcommunity.com/sharedfiles/filedetails/?id=1149625355"))

    mod = self.new
    mod.name = doc.css("div.workshopItemTitle").text.strip
    mod.game = doc.css("div.apphub_AppName.ellipsis").text.strip
    mod.url = "https://steamcommunity.com/sharedfiles/filedetails/?id=1149625355&searchtext="
    mod
  end
  
  def self.scrape_mod2
    doc = Nokogiri::HTML(open("https://steamcommunity.com/sharedfiles/filedetails/?id=1158791019&searchtext="))
    
    mod = self.new
    mod.name = doc.css("div.workshopItemTitle").text.strip
    mod.game = doc.css("div.apphub_AppName.ellipsis").text.strip
    mod.url = "https://steamcommunity.com/sharedfiles/filedetails/?id=1158791019&searchtext="
    mod
  end
end
