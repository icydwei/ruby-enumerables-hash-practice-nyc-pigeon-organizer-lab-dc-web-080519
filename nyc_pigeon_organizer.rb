require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}  
  data[:color].reduce({}) do |memo, (colors, names)|
    names.each do |name|
      #binding.pry
      if pigeon_list.include?(name)
      #binding.pry
      pigeon_list[name][:color] << colors.to_s
      else
      pigeon_list[name] = {}
      pigeon_list[name][:color] = []
      pigeon_list[name][:color] << colors.to_s
      #binding.pry
      end
    end  
  end
  data[:gender].reduce({}) do |memo, (genders, names)|
    names.each do |name|
      binding.pry
      if pigeon_list.include?(name) && pigeon_list[:gender]
           pigeon_list[name][:gender] << genders.to_s
      elsif pigeon_list.include?(name) || pigeon_list[:gender]
          pigeon_list[name][:gender] = []
          pigeon_list[name][:gender] << genders.to_s
      else
      pigeon_list[name] = {}
      pigeon_list[name][:gender] = []
      pigeon_list[name][:gender] << genders.to_s
      #binding.pry
      end
    end  
  end

return memo
end
