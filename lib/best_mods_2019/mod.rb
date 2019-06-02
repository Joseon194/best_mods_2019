class BestMods2019::Mod
  
attr_accessor :name, :datemade, #url?

def self.thisyear
self.scrape_mod
end

end
