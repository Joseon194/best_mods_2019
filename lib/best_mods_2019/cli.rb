class BestMods2019::CLI
  
  def call
    list_mods
    menu
    goodbye
  end
  
def list_mods
    puts "2019's best PC mods:"
    @mods = BestMods2019::Mod.thisyear
    @mods.each.with_index(1) do |mod, i|
      puts "#{i}. #{mod.name} - #{mod.game}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the mod and copy and paste the URL if you'd like more info on the mod or type list to see the mods again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_mod = @mods[input.to_i-1]
        puts "#{the_mod.name} - #{the_mod.game} - #{the_mod.url}"
      elsif input == "list"
        list_mods
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more mods!!!"
  end
end