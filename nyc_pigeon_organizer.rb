require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}  
  data[:color].each do |colors|
    colors.each do |names|
      if pigeon_list.include?(names)
        pigeon_list[names][:color] 
    
end
