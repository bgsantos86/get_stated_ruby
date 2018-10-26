# Ruby Loops

## Ruby Loops
A loop is used to repeat statements until a condition is met. Ruby offers several different kinds of loops: the loop, while loop, and until loop.

A loop is a piece of code that will run the statements inside until some condition is met. We can use loops to do things like asking a user if they want to keep entering input until they type "done" or "no" or something similar. There are several different kinds of loops available in Ruby. We can write a loop using the "loop" keyword.

**Important!**
We create an infinite loop when writing code in this lesson. To exit the loop, hold the Ctrl key and press C. On Windows, you can also use Ctrl + Pause/Break.

**Terms**
Infinite Loop: A loop that never exits.

**Code Samples**
Here is our simple loop:
```ruby
loop do
  print "Do you want to continue? (y/n) "
  answer = gets.chomp.downcase
end
```

# quando o loop tem somente uma linha a convensão é usar chaves

```ruby
loop {
  print "Do you want to continue? (y/n) "
}
```

The above code creates an infinite loop, or, a loop that never exits. To fix that, we can use the break keyword to exit the loop.
```ruby
loop do
  print "Do you want to continue? (y/n) "
  answer = gets.chomp.downcase
  if answer == "n"
    break
  end
end
```

### Loop Conditionals

A loop conditional will exit a loop. A loop will run forever until the condition to exit the loop returns the value of true. If the condition returns the value of false, the loop will not exit. If the condition never returns true, we'll create an infinite loop.

Links
(Random Documentation)[http://ruby-doc.org/core-2.0/Random.html]
(String#index Documentation)[http://ruby-doc.org/core-2.0/String.html#method-i-index]
(RegExp Documentation)[http://www.ruby-doc.org/core-2.1.3/Regexp.html]

Code Samples

Random number guessing program:
loop_conditional.rb
```ruby
random_number = Random.new.rand(5)
loop do
  print "Guess the number between 0 and 5 (e to exit): "
  answer = gets.chomp
  if answer == "e"
    puts "The number was #{random_number}."
    break
  else
    if answer.to_i == random_number
      puts "You guessed correctly!"
      break
    else
      puts "Try again."
    end
  end
end
```

Program to exit a loop when a number greater than 10 is entered:
loop_conditional_number.rb
```ruby
loop do
  print "Enter a number greater than 10 to exit: "
  answer = gets.chomp.to_i
  break if answer > 10
end
```

Program to loop through asking for someone's name and make sure it is formatted correctly:
```ruby
def get_name
  name = ""
  loop do
    print "Enter your name (minimum 2 characters, no numbers): "
    name = gets.chomp
    if name.length >= 2 && !name.index(/\d/)
      break
    else
      puts "Name must be longer than 2 characters and not contain numbers."
    end
  end
  return name
end

name = get_name()
puts "Hi #{name}."
```

### The While Loop

**Concepts**
Iterator variable

**Code Samples**
Here is a simple while loop:

```ruby
answer = ""
while answer != "n"
  print "Do you want me to repeat this pointless loop again? (y/n) "
  answer = gets.chomp.downcase
end
```

Example while loop with exit conditional as a number:

```ruby
def print_hello(number_of_times)
  i = 0
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5
  print "How many times do you want to print 'hello'? (Enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end
```

### The Until Loop
The until loop will continue to run until a certain condition is met. It's the opposite of the while loop in that while loops run as long as the condition is true, while the until loop will run as long as the condition is false and it exits when the condition becomes true.

**Code Samples**
Example simple until loop:

```ruby
answer = ""
until answer == "no" do
  print "Do you want this loop to continue? (y/n) "
  answer = gets.chomp
end
```

Example until loop used with a number based conditional exit:
```ruby
def print_hello(number_of_times)
  i = 0
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0
until answer >= 5
  print "How many times do you want to print 'hello'? Enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end
```

## Ruby Iteration

### Iteration With Each
The while loop will print out an array and use a variable to increment and keep track of what it is printing out. As we're looping through each item in the array, we're using a specific pattern -- getting an item out of the array and working with it in a specific way. You could say that we're iterating over each item in the array. Ruby gives us ways to do this without writing a loop each time. The "each" method is commonly used to iterate over a collection of items, like an array.

Documentation Links

(Array#each)[http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-each]

**Code Samples**
Given the following array:
```ruby
array = [0, 1, 2, 3, 4, 5]
```

We can use the each method to iterate over the individual items in the array:
```ruby
array.each do |item|
  puts "The current array item is: #{item}"
end
```

The do...end is called a block. A block is a chunk of code you can pass into a Ruby method. What the each method does is to call your block once for each item in the array, and pass the item into the block as an argument. So the above block prints each item in the array on its own line.

The block can also be written on one line:
```ruby
array.each {|item| puts "The current array item is: #{item}"}
```

It is conventional to write blocks using the do...end syntax for multiple lines of code in the block and the braces {} syntax for single line code blocks.

We can also manipulate items inside of an each block:
```ruby
array = [0, 1, 2, 3, 4, 5]
array.each do |item|
  item = item + 2
  puts "The current item + 2 is #{item}."
end
```

This will leave the original array unchanged.

### Hash Iteration
Arrays aren't the only Ruby type that get to see the benefits of iteration. In Ruby Collections, we learned about arrays and hashes. Hashes have several different ways of iteration -- keys, values, and both keys and values at the same time.

**Documentation Links**
- (Hash#each)[http://ruby-doc.org/core-2.0/Hash.html#method-i-each]
- (Hash#each_key)[http://ruby-doc.org/core-2.0/Hash.html#method-i-each_key]
- (Hash#each_value)[http://ruby-doc.org/core-2.0/Hash.html#method-i-each_value]

**Code Samples**
The following code samples will use this hash:
```ruby
business = { "name" => "Treehouse", "location" => "Portland, OR" }
```

We can work with each key and value using the each method, which takes two arguments. We separate arguments to blocks using a comma, just like method arguments:
```ruby
business.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end
```

The each method is aliased as each_pair.

We can iterate over hash keys using the each_key method, which takes one argument:
```ruby
business.each_key do |key|
  puts "Key: #{key}"
end
```

The same thing applies to values using the each_value method, which also takes one argument:
```ruby
business.each_value do |value|
  puts "Value: #{value}"
end
```

### Times Iteration
The times iterator will take a number and execute the statements in the block that number of times. The times iterator optionally takes an argument and, just like array indices, starts at 0.

Code Samples
Using a number, we can iterate that amount of times:
```ruby
5.times do
  puts "Hello!"
end
```

This will print "Hello!" to the screen 5 times.

The times method also can take a single argument:
```ruby
5.times do |item|
  puts "Hello! #{item}"
end
```
Just like an array index, the times index starts at 0.

### For Loops
There's another kind of loop in Ruby called the 'for' loop. The for loop is a common kind of loop in other programming languages but it functions a little bit differently in Ruby. A Ruby for loop is more of an iterator and functions internally like the each method.

A Note About For Loops
Most Ruby programmers don't use the for loop very often, instead preferring to use an "each" loop and do iteration. The reason for this is that the variables used to iterate in the for loop exist outside the for loop, while in other iterators, they exist only inside the block of code that’s running.

You can use whichever you prefer but it's important to know how for loops work in your career as a Ruby programmer.

**Code Samples**
The following for loop creates a Range class with the numbers 1 to 3 and then passes it to the block:
```ruby
for item in 1..3 do
  puts "The current item is #{item}."
end
```

The for loop also works on arrays:
```ruby
for item in ["Programming", "is", "fun"]
  puts "The current item is #{item}."
end
``` 
It's important to note that the variable will exist outside of the for loop after it runs.