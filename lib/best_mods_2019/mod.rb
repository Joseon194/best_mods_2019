class BestMods2019::Mod
  
attr_accessor :name, :datemade, #:url?

def self.thisyear
self.scrape_mods
end

 def self.scrape_mods
    mods = []

    mods << self.scrape_moddb

    mods
  end

  def self.scrape_moddb
    doc = Nokogiri::HTML(open("https://www.moddb.com/mods/top"))

    mod = self.new
    mod.name = doc.css("div.content a").text.strip
    mod.datemade = doc.css("span.time").text.strip
    #mod.url = mod.css("a.wantone").first.attr("href").strip

    mod
  end
end
