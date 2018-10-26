def old(array)
    i = 0
    while i < array.length
        item = array[i]
        puts "The current item is #{item}."
        i += 1
    end
end

def block(array)
    array.each do |item|
        puts "The current item is #{item}."
    end
end

array = [0 ,1, 2, 3, 4, 5]
#old(array)
block(array)