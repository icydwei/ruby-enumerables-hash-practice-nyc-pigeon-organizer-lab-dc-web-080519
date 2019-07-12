require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}  
  data[:color].reduce({}) do |memo, (colors, names)|
    #binding.pry
    names.each do |name|
    if pigeon_list.include?(name)
      binding.pry
      pigeon_list[name][:color] = "purple"
      end
    end  
  end  
end
