class BestMods2019::Mod
  
attr_accessor :name, :datemade, :url?

def self.thisyear
self.scrape_mod
end

 def self.scrape_mods
    mods = []

    mods << self.scrape_moddb

    mods
  end

  def self.scrape_moddb
    doc = Nokogiri::HTML(open("https://www.moddb.com/mods/top"))

    mod = self.new
    mod.name = doc.search("h2.main-title").text.strip
    mod.datemade = doc.search("#todays-deal span.price").text.strip
    mod.url = doc.search("a.wantone").first.attr("href").strip

    mod
  end
end
end
