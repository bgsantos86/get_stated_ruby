hash = {"item"=>"Pão", "quantity"=>1, "marca"=>"nenhuma"}

puts "Hash #{hash.inspect}"

print "hash.length: "
puts hash.length

print "hash.invert: "
puts hash.invert

print "hash.shift: "
puts hash.shift.inspect
puts hash.inspect
hash["item"] = "Pão"

puts "Merginf Hashs"

print "Original Hash: "
puts hash.inspect

puts "Merged with {calories => 100}"
puts hash.merge({'calories' => 100})

puts "Original Hash: "
puts hash.inspect

puts "Merged with {quantity => 100}"
puts hash.merge({'quantity' => 2})

puts "Original Hash: "
puts hash.inspect
