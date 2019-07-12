require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}  
  data[:color].reduce({}) do |memo, (colors, names)|
    names.each do |name|
      #binding.pry
      if pigeon_list.include?(name)
      #binding.pry
      pigeon_list[name][:color] = colors.to_s
      else
      pigeon_list[name] = {}
      pigeon_list[name][:color] = colors.to_s
      end
    end  
  end  
end
