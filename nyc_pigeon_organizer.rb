def nyc_pigeon_organizer(data)
  # write your code here!
  final_results=data.each_with_object({}) do|(outer_key, value), final_array|
    value.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name]={}
        end
        if !final_array[name][outer_key]
          !final_array[name][outer_key]=[]
        end
        final_array[name][outer_key].push(inner_key.to_s)
      end
    end
  end
end