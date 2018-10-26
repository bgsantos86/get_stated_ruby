business = { "name" => "Treehouse", "location" => "Curitiba, PR" }

# the each method is also each_pair
business.each do |key, values|
    puts "The hash key is #{key} and the value is #{values}"
end

business.each_key do |key|
    puts "Key: #{key}"
end

business.each_value do |values|
    puts "Values: #{values}"
end