require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}  
  data[:color].each do |colors|
    #binding.pry
    colors.reduce({}) do |memo, (color, names)|
      binding.pry
      if pigeon_list.include?(names)
        pigeon_list[names][:color] 
      end
    end
  end  
end
