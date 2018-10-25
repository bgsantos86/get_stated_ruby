# Ruby Collections

## Ruby Arrasys

### Create Arrays

**Code Samples**
Create an array:
```ruby
array = Array.new
```

Create an array with three items:
```ruby
array = Array.new(3, "Jason")
```

Create an empty array with bracket notation:
```ruby
array = []
```

Create an array using brackets with three items:
```ruby
array = ["milk", "eggs", "bread"]
```

Create an array using the %w notation which contains three strings:
```ruby
array = %w(milk eggs bread)
```

Create an array using the %W notation which contains three strings and one is interpolated:
```ruby
item = “milk”
array = %W(#{item} eggs bread)
```

### Adding Items to Arrays

Now that we know how to create an array, let's practice adding items to it.

**Code Samples**
Create an array:
```ruby
array = ["milk", "eggs", "bread"]
```

Add the string "carrots" to the end of the array:
```ruby
array << "carrots"
```

Add the string "potatoes" to the end of the array:
```ruby
array.push("potatoes")
```

Add the string "celery" to the beginning of the array:
```ruby
array.unshift("celery") # add to beginning
```

Add the strings "ice cream" and "pie" to the end of the array:
```ruby
array += ["ice cream", "pie"]
```

Add the number 1 to the end of the array:
```ruby
array << 1
```

### Accessing Items in Arrays

Now that we've seen how to create arrays and add items to them, we're going to learn how to work with existing arrays and access what's inside them.

**Terms**
Index: The numbered position of an item in an array. Arrays all start with the first item having an index of 0.

**Code Samples**
Starting with the following array:
```ruby
array = ["milk", "eggs", "bread", "ice cream", "pie", "potatoes"]
```

Access "milk", which is at the first position in the array (index 0), and assign it to a variable named "item":
```ruby
item = array[0]
```

Access the second item in the array (index 1):
```ruby
array[1]
```

Print out the first item in the array using the first method:
```ruby
puts array.first
```

Print out the last item in the array, using the negative index and also the "last" method:
```ruby
puts array[-1]
puts array.last
```

The fetch method can be used with an index to return that item in an array:
```ruby
puts array.fetch(2)    # => "bread"
```

If a second argument is provided to the fetch method and there is no corresponding item in the array, the second argument will be used as a default:
```ruby
puts array.fetch(20, "cake")    # => "cake"
```

Return the number of items in an array:
```ruby
array.length
array.count
```

Return the number of items in the array matching what you send in:
```ruby
array.count("eggs")  # => 1
```

To find out if an array contains a particular item, use the include? method with the argument of the desired item:
```ruby
array.include?("eggs")  # => true
```

### Removing Items From Arrays

So far while working with arrays, we've learned how to add and access the items inside. Now it's time to learn how to remove items in arrays.

**Code Samples**
Let's assume we have the following array:
```ruby
array = ["milk", "eggs", "bread", "ice cream", "carrots", "potatoes"]
```

To access and remove the last item in the array, we can use the pop method:
```ruby
last_item = array.pop
```

The last_item variable will now contain the string potatoes. The array now looks like this:
```ruby
["milk", "eggs", "bread", "ice cream", "carrots"]
```

To access and remove the first item in the array, we use the shift method:
```ruby
first_item = array.shift 
```

The first_item variable now contains the string milk. The array now looks like this:
```ruby
[ "eggs", "bread", "ice cream", "carrots" ]
```

We can use the drop method to take out a number of items from an array. The drop method's argument is the number of items to remove from the front of the array.
```ruby
ice_cream_carrots = array.drop(2)
```

Similar to the unshift method, which adds to the beginning of an array, the shift method removes from the beginning of an array:
```ruby
item = array.shift
```

The item variable now contains the string "eggs" and our array looks like this:
```ruby
[ "bread", "ice cream", "carrots" ]
```

Let's add "potatoes" to the end of our array:
```ruby
array.push("potatoes")
```
The array now contains:
```ruby
["bread", "ice cream", "carrots", "potatoes"]
```

The slice method takes two arguments and removes and returns items from the array. The first argument is the index in the array, and the second argument is the number of items:
```ruby
first_three_items = array.slice(0, 3)
```

Now, the first_three_items variable contains the following array:
```ruby
["bread", "ice cream", "carrots"]
```

The array variable is now a single element:
```ruby
["potatoes"]
```

## Ruby Hashes

### Ruby Hash Creation

Let's start working with hashes now. Hashes are created in a couple of different ways. A hash can be instantiated using curly braces or instantiating a new instance of the class.

**Code Samples**

Here's how to create a hash by instantiating a new instance of the Hash class:
```ruby
item = Hash.new
```

Hashes can also be created by using curly braces:
```ruby
{}
```

When creating a hash using curly braces, keys and values can also be specified:
```ruby
item = { "item" => "Bread", "quantity" => 1 }
```

Hash keys can be almost any Ruby type. Here's an example of using symbols as hash keys:
```ruby
item = { :item => "Bread", :quantity => 1 }
```

Hash keys can also be numbers. If we set the following hash key and value:
```ruby
item[1] = "Grocery Store"
```

Our hash would look like this:
```ruby
{ :item => "Bread", :quantity => 1, 1 => "Grocery Store" }
```

Once a hash has been instantiated, it is possible to add new hash keys and values by using the name of the hash, brackets containing the new key, an equals sign, and the new value for said key:
```ruby
item["brand"] = "Treehouse Bread Company"
```

If you're using symbols as keys, there's a shorthand notation you can use. So if you're defining a hash like this...
```ruby
item = { :item => "Bread", :quantity => 1 }
```

...you can move the colons after the symbols, and omit the arrows. This hash will be identical to the one above:
```ruby
item = { item: "Bread", quantity: 1 }
```

### Working with Hash Keys

Hashes are composed of keys and values. In this video, we'll learn how to work with hash keys.

**Code Samples**
Here is the hash we'll be working with:
```ruby
hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }
```

Keys
To find out all of the different keys inside of the hash, we can use the keys method:
```ruby
hash.keys
```

This would return an array of the keys in the hash:
```ruby
["item", "quantity", "brand"]
```

To check whether or not a hash contains a key, we can use the has_key? method, which returns true or false. It is aliased as member? and key?:
```ruby
hash.has_key?("brand")      # => true
hash.member?("quantity")    # => true
hash.key?("item")           # => true
```

The store method will add a key and value pair to a hash:
```ruby
hash.store("calories", 100)
```

The hash would then contain the following:
```ruby
{ "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company", "calories" => 100 }
```

**Equality**
Two hashes are considered equal when they have the same keys and values:
```ruby
milk = { "item" => "Milk", "quantity" => 1, "brand" => "Treehouse Dairy" }

puts milk == hash     # => true

bread = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }

puts hash == bread     # => false
```
### Working with Hash Values

So far, we've learned how to create and modify hashes and work with hash keys. Ruby provides several ways to work with the values in a hash as well. In this video, we'll explore different ways to work with the values in a hash.

**Code Samples**
For the examples below, we'll be working with this hash:

hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }
To return an array of the values in the hash, we can use the values method:
```ruby
hash.values
```

Which would return the following:
```ruby
["Bread", 1, "Treehouse Bread Company"]
```

The has_value? method takes one argument and returns true or false if the value is contained within the hash:
```ruby
hash.has_value?("brand")
```

That would return false since "brand" isn't a value. However, the following would return true:
```ruby
hash.has_value?("Bread")
```

The values_at method takes several arguments and returns the hash values at the specified keys as an array:
```ruby
hash.values_at("quantity", "brand")
```

That would return:
```ruby
[1, "Treehouse Bread Company"]
```
### Hash Methods
In this video, we're going to explore some of the methods that Ruby provides us for working with hashes.

**Links**
(Ruby Hash Documentation)[http://www.ruby-doc.org/core-2.1.2/Hash.html]

**Code Samples**
For the examples below, we'll be working with the following hash:
```ruby
hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }
```

The #length method will return the number of keys in the hash. In this case, it would be 3:
```ruby
hash.length
```

The #invert method returns a new hash with the keys and values transposed:
```ruby
hash.invert
```

That would produce the following new hash:
```ruby
{"Bread" => "item", 1 => "quantity", "Treehouse Bread Company" => "brand"}
```

The #shift method works similar to hashes as it does with arrays. It will remove a key and value pair from the hash and return it as an array:
```ruby
hash.shift
```

This would return the following (note that it is an array):
```ruby
["item", "Bread"]
```

The original hash would also be modified:
```ruby
{"quantity" => 1, "brand" => "Treehouse Bread Company"}
```

The #merge method combines the hash sent in as an argument and returns a new hash with the two combined:
```ruby
hash.merge({"calories" => 100})
```

Would return the following:
```ruby
{"quantity" => 1, "brand" => "Treehouse Bread Company", "calories" => 100}
```

If any key value pairs exist in the original hash, the merge method will overwrite those:
```ruby
hash.merge({"quantity" => 100})
```

Would return:
```ruby
{"quantity" => 100, "brand" => "Treehouse Bread Company"}
```

Have questions about this video? Start a discussion with the community and Treehouse staff.
