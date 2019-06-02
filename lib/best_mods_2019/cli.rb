class BestMods2019::CLI
  
  def call
    list_mods
    menu
    goodbye
  end
  
  def list_mods
    puts "2019's best PC mods:"
    puts <<-DOC.gsub /^\s*/, ''
      1. Doom Extreme
      2. EAW Remake
    DOC
  end
  
  def menu
    input =nil
    while input != "exit"
    puts "Enter the number of the mod youd like to seeor type list to see the mods again or type exit:"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "More info on mod 1..."
    when "2"
      puts "More info on mod 2..."
    end 
    when "list"
      list_mods
    else
      puts "Not sure what you want, type list or exit."
    end
  end
end

def goodbye
  puts "Thank you for checking out this years best mods!"
end
end