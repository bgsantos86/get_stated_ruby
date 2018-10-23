# Ruby Basics

**IRB**
- IRB stands for "Interactive RuBy".
- You can run it by clicking in your console or terminal and typing irb at the system prompt.
- When we run it, it'll show you a prompt where you can type Ruby expressions one at a time, hitting Enter after each.
- IRB will immediately show you the result of each expression. You don't need to call puts or anything.

```ruby
2.3.0 :001 > 1 + 2
 => 3
2.3.0 :002 > Time.now
 => 2017-09-02 13:31:38 -0700
```

- When you're done and you're ready to exit IRB, type exit and press Enter. You'll be returned to the system prompt.

```ruby
2.3.0 :003 > exit
$ 
```
- IRB is a great way to try code out and see what it does, and even professional Ruby developers use it as a way to quickly test out ideas.

## Ruby Sintax

**Scope:** In this course, we're going to use Ruby to create a shopping program for widgets. People often buy them in groups of 50, 100, or more, even though they cost 10 dollars apiece. The widget store needs us to write a program that lets a user type in the number of widgets they want to buy, multiply that by 10 to get the total price, and report the total to the user. They're also thinking that they may need to offer discounts if a user is purchasing a large quantity.

**Feature List**: 
- Display welcome message
- Ask for quantity
- Calculate total
- Discount for large orders

The program needs to greet the user with the message "Welcome to the widget store!" Then it needs to ask them how many widgets they're ordering. It should wait for them to type in a quantity and press Enter. The program will need to store whatever quantity they enter in the computer's memory. Each widget costs $10, so the program should multiply the quantity by 10 to get the total cost. It should print out a message that includes the quantity the user typed in, and the total cost.

The store also wants to offer discounts for ordering a lot of widgets at once. So if a user orders 50 or more widgets, they should only be charged $9 per widget. And if a user orders 100 or more widgets, they should only be charged $8 per widget.

### Ruby source files

Ruby source code is stored in plain text files, but instead of .txt, the file usually ends in .rb.
Run ruby widgets.rb.
- To run a Ruby program, we need to run the ruby command in the terminal or console.
- Type ruby, a space, and the name of the file you want to run. As long as you're in the same folder or directory as that file, then all you need to type is the file name.

If you have a script named other.rb that's in a folder named my_folder, you have two ways to run it:

	ruby my_folder/other.rb OR
	cd my_folder, then ruby other.rb

### Methods

```ruby
puts "hello world"
```

- puts is a method, a group of code statements that together perform a particular task.
	- puts stands for "put string", and that's the task it carries out: it puts a string of text characters on the terminal output.
	- Typing the method name in your code calls that method, or causes it to run.
	- The text inside quotes is a string. We'll be talking more about strings soon.
	- Because we're putting the string here following the method call, it's passed as an argument to the method.

```ruby
puts(1, 2, "a", "b")
sleep(2)
print(1, 2, "a", "b")
sleep(1)
```

- Parentheses are optional

```ruby
puts 1, 2, "a", "b"
sleep 2
print 1, 2, "a", "b"
sleep 1
```

### Comments

- If you insert a pound sign (#), or hash mark, into your code, and it's not part of a string, Ruby will ignore all the text from the pound sign to the end of the line.
- You can do this on a line by itself, or you can do it at the end of a line of code.

```ruby
# Comment
puts "hello world" # Comment
```

### Defining Methods

- Defining a method
	- def keyword
	- method name
	- method body: one or more lines of code that will be run when method is called 
	- lines of method body are usually indented to make it clear they're a part of the method, although this isn't required 
	- end keyword

```ruby
def wait
puts "Waiting..."
sleep 3
puts "Done"
end

def count_to_three
puts 1
puts 2
puts 3
end
```

- Valid method names
	- All lower case
	- Numbers are legal but rarely used
	- Separate words with underscores. This is called snake case because it makes the name look like it's crawling on the ground.

- Call a method by typing its name in your code

```ruby
count_to_three
wait
```

- Can call a method as many times as we want

```ruby
count_to_three
count_to_three
```

### Variables

- Variables in a programming language are like variables in algrebra, but they can hold other things besides numbers. They can hold text, or a calendar date, or any other piece of data that can be stored in your computer's memory.
- When you assign a value to a variable, you're giving that value a name that you can refer to it by.
- You assign a value to a variable with a single equals sign: =

```ruby
	number = 4
	greeting = "hello"
```
- We can then use that variable anywhere we might use the original piece of data.

```ruby
puts number # 4
puts greeting # "hello"
puts number + 2 # 6
puts 12 - number # 8
```

- If we change the value the variable holds, the remainder of the program will use that new value instead of the old one.

```ruby
number = 6
greeting = "hi"

puts number # 6
puts greeting # "hi"
puts number + 2 # 8
puts 12 - number # 6`	
```

- We can even replace the value a variable holds in the middle of a program.
- Valid variable names - same as method names.
	- All lower case
	- Numbers are legal but rarely used
	- Snake case - separate words with underscores.

```ruby
	word = "hi"
	multiple_words = "hi there"
```

### Method Arguments

- We still can't specify how many seconds our wait method should pause for.
- But learning about variables was an important step. Now let's learn about the last piece of the puzzle: method parameters.
- A parameter is a special variable that you declare at the start of a method.
	- This method takes two parameters, one named first and one named second:

```ruby
def add(first, second)
puts first, second
puts first + second
end
```

- When a method takes parameters, you need to provide argument values when calling that method.
	- Ruby sets each parameter variable with the value in the argument.

```ruby
def add(first, second)
  puts first, second
  puts first + second
end

def subtract(first, second)
  puts first, second
  puts first - second
end

add(100, 50) # 150
subtract(75, 25) # 50
add(3, 4) # 7
subtract(10, 5) # 5
```
- Here's our wait method from before, updated with a parameter for the number of seconds it should wait:

```ruby
def wait(seconds)
  puts "Waiting..."
  sleep seconds
  puts "Done"
end

wait 1
wait 3
```
### Method Return Values

- Ruby methods have a return value, a value they send back to the code that called them.

```ruby
def add(first, second)
  return first + second
end

def subtract(first, second)
  return first - second
end

total = add(1, 2)
puts total
remaining = subtract(8, 3)
puts remaining
```

- We don't need the return keywords here - the last expression evaluated in a method becomes that method's return value.

```ruby
def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

total = add(1, 2)
puts total
remaining = subtract(8, 3)
puts remaining
```
- Pass return values to other functions

```ruby
# We don't have to assign the return value to a variable first.
# We can just pass it straight to "puts".
puts add(1, 2)
puts subtract(8, 3)
# We can also use method return values as arguments to our own methods.
puts add(add(1, 2), 4)
puts add(3, subtract(11, 7))
puts add(add(1, 2), subtract(11, 7))
```
**Returning a value vs. using puts**
- It's important to distinguish between method output using puts and a method return value.
- This works because subtract returns the result of the subtraction:

```ruby
def subtract(first, second)
  first - second
end

number = 9
puts number # 9
number = subtract(number, 1)
puts number # 8
number = subtract(number, 1)
puts number # 7
```
- This doesn't work because subtract returns the result of calling puts, which is an empty value:

```ruby
def subtract(first, second)
  puts first - second # Returns an empty value!
end

number = 9
puts number # 9
number = subtract(number, 1) # Assigns empty value to "number"!
puts number # Prints empty value!
number = subtract(number, 1) # Tries to subtract from empty value, resulting in error!
puts number # Never runs because of the error!
```
**Widget store code**
Here's our widget store code, with the ask method updated to return what the user types.

```ruby
def ask(question)
  print question
  # "gets" returns a string the user types.
  # Because the call to "gets" is the last
  # expression in the "ask" method, the
  # return value of "gets" becomes the
  # return value of "ask".
  gets 
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
puts answer # Prints whatever the user typed.
```

**Additional practice**
We've created a workshop where you can get additional practice defining Ruby methods. Don't miss this chance to strengthen your skills; it will make later stages easier!

[Practice Ruby Methods](https://teamtreehouse.com/library/practice-ruby-methods)

## Strings

- A string is a series of text characters
- A string can be surrounded by single or double-quotes.

```ruby
'A string'
"Also a string"
```

- Almost all characters within string surrounded by single quotes appear as they are typed: puts 'I #{represent} "characters" verbatim.'
- Some punctuation marks within double-quoted strings are interpreted specially: puts "I make some substitutions: #{2 + 4}"

### Strings Concatenation

So now that we know how irb works, let's use it to try out string concatenation.

```ruby
$ irb
2.3.0 :001 > "a" + "b"
 => "ab"
2.3.0 :002 > "some words" + "more words"
 => "some wordsmore words"
2.3.0 :003 > "some words" + " " + "more words"
 => "some words more words"
2.3.0 :004 > myvar = "a string"
 => "a string"
```

- You can concatenate strings in variables

```ruby
2.3.0 :005 > myvar + " abc"
 => "a string abc"
```

- Concatenation gives a new string, it doesn't change the string in the variable

```ruby
2.3.0 :006 > myvar 
 => "a string"
```
- To change the variable's value, use an abbreviated assignment operator, which we'll talk more about soon

```ruby
myva2.3.0 :007 > myvar += " abc"
 => "a string abc"
2.3.0 :008 > myvar
 => "a string abc"
myva2.3.0 :009 > myvar += " def"
 => "a string abc def"
myvar
2.3.0 :010 > myvar
 => "a string abc def"
```

- Strings can only be concatenated together with other strings. Anything else, like a number, will result in an error.
	- We'll be showing you a solution for this shortly.

```ruby
2.3.0 :001 > 1 + "a string"
TypeError: String can't be coerced into Fixnum
        from (irb):1:in `+'
        from (irb):1
        from /Users/jay/.rvm/rubies/ruby-2.3.0/bin/irb:11:in `<main>'
2.3.0 :002 > "a string" + 1
TypeError: no implicit conversion of Fixnum into String
        from (irb):2:in `+'
        from (irb):2
        from /Users/jay/.rvm/rubies/ruby-2.3.0/bin/irb:11:in `<main>'
```

**Updating the widget store**

- Using string concatenation to fix our ask method
	- We need to print a space following the question we ask the user
	- We can do this using string concatenation

```ruby
def ask(question)
  print question + " "
  gets
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
```

- Let's print what the user entered so they can confirm it's correct.

```ruby
answer = ask("How many widgets are you ordering?")
puts "You entered" + answer + "widgets"
```

- Output:

```
You entered11
widgets
```
- Oops! We need to add spaces surrounding answer, so fix that: puts "You entered " + answer + " widgets"
	- Output:

```
You entered 11
 widgets
```
- You may be wondering why we didn't get an error, since strings can only be concatenated with other strings. The reason is, the value in the answer variable is a string. The gets method always returns strings. So even though the user entered a number, it's treated as a string. Eventually we'll have to convert it to an actual number, which we'll see how to do later.
- It still skips to a new line after printing answer. That's something we'll have to fix later as well.

### String Interpolation

Ruby provides a feature called string interpolation that lets you substitute the result of Ruby code into the middle of a string.

- Interpolation works within double-quoted Ruby strings.
- Anywhere you want within the string, you can include an interpolation marker. A marker consists of a hash mark (also known as a pound sign), an opening curly brace, and a closing curly brace: #{}
- You can include any Ruby code you want between the curly braces.
- The code will be evaluated, the result will be converted to a string, and the resulting string will be substituted for the interpolation marker within the containing string.
- Lets us concatenate values like numbers with strings.
- Lets us embed simple math operations.
- Lets us embed the values of variables.
- We can include multiple interpolation markers into a single string.
- No interpolation in single-quoted strings.

```ruby
$ irb
2.3.0 :001 > "aaa #{Time.now} bbb"
 => "aaa 2017-09-02 19:12:52 -0700 bbb"
2.3.0 :002 > "a string #{1}"
 => "a string 1"
2.3.0 :003 > "The answer is #{1 + 2}"
 => "The answer is 3"
2.3.0 :004 > name = "Jay"
 => "Jay"
2.3.0 :005 > "Hello, #{name}!"
 => "Hello, Jay!"
2.3.0 :006 > "#{Time.now} #{name}"
 => "2017-09-02 19:15:08 -0700 Jay"
2.3.0 :007 > 'Hello, #{name}!'
 => "Hello, \#{name}!"
```

**Widget store code**
- Let's try improving our widget store code using string interpolation.
- We'll remove the plus signs to combine all the concatenated strings into one.
- In their place, we'll add an interpolation marker that inserts the value of the answer variable: puts "You entered #{answer} widgets"
- It's easy to remember to put spaces surrounding the interpolation marker because it would look funny if we didn't.

```ruby
def ask(question)
  print question + " "
  gets
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
puts "You entered #{answer} widgets"
```
You can see in the output that it's inserting the value of the answer variable into the string, and it's surrounded by spaces as it should be.

```
You entered 10
 widgets
```
It still skips to a new line, which is a problem. We'll have an answer to that shortly.

### Inspecting Values

Sometimes calling "puts" with a Ruby value doesn't reveal everything about it. This is why Ruby provides a method named "p" in addition to "puts" and "print". The "p" method allows us to inspect the values we pass to it, to print them out approximately the same way they would appear in Ruby code.

- Sometimes calling puts with a Ruby value doesn't reveal everything about it.
- These calls to puts appear to output nothing at all, even though we're passing Ruby objects to each one.
	- A string with nothing but space characters
	- An empty string
	- The special value nil and an empty array, important concepts that we'll discuss in future courses
	- All appear empty.

```ruby
puts "     "
puts ""
puts nil
puts []
```

Output:

```




```

This is why Ruby provides a method named p in addition to puts and print. The p method allows us to inspect the values we pass to it, to print them out approximately the same way they would appear in Ruby code.

```ruby
p "     "
p ""
p nil
p []
```

Output

```ruby
"     "
""
nil
[]
```

### Escape Sequences

Sometimes, we need characters in a string that are hard to represent in program code.

**Escape sequences** are used to represent characters that would normally be difficult to include in program code.

Newline: \n
```
skips to a
new line
```

Tab: \t
```ruby
    Indents text
```

Double-quotes: \"
```ruby
Inserts "double quotes"
```

Single-quote: \'
```ruby
Inserts 'single quotes'
```

Backslash: \\
```ruby
Inserts a \ backslash
```

Here's some code that uses escape sequences:
```ruby
puts "first line\nsecond line"
puts "\tindented text"
puts "He said, \"Whoa.\""
```
Output:
```
first line
second line
    indented text
He said, "Whoa."
```

You don't always have to escape quotation marks in your strings:
```ruby
puts "Double-quoted strings can hold single quotes: ''"
puts 'Single-quoted strings can hold double quotes: ""'
# But...
puts "Double-quotes in double-quoted strings need to be \"escaped\"."
puts 'Single-quotes in single-quoted strings need to be \'escaped\'.'
```

## Objects

In Ruby, almost every piece of data is an "object". That means the data has useful methods attached to it that you can call. In this stage, we'll learn how to use these methods!

### Calling Methods on an Object
In this stage, we're going to learn how to call methods on an object. To be clear, we're not talking about passing an argument to a method. We mean taking a piece of data and calling a method that is only available on that piece of data.

When we talk about calling methods on an object, we mean taking a piece of data and calling a method that is only available on that piece of data. For example, strings have one set of methods available on them. And numbers have a different set of methods.
```ruby
"a string".length
"another string".upcase
"a third string".reverse

7.even?
-12.abs
5.next
```

When you call a method, it's important for Ruby to know which object you're calling it on, because the behavior of the method will vary based on the object. We type the dot operator following an object to indicate that we're calling a method on it.

```ruby
puts "AA".length        # 2
puts "AAAAAAAAA".length # 9

puts 3.odd?  # true
puts 4.odd?  # false
puts 3.even? # false
puts 4.even? # true
```

Or, in place of the object itself, we can use a variable that refers to that object:
```ruby
string = "AA"
puts string.length # 2

number = 4
puts number.even?  # true
```

**Chaining methods**
- You want to know if a string contains an even number of characters.
	- Call length on the string
	- Call even? on number returned from length
	- Could store length in a variable, then call even? on the value in the variable
	- Instead, can "chain" the method calls by putting a dot operator and a method name directly following the previous method call
	- Should only do this in situations where you're sure the first method call won't fail. Otherwise, subsequent methods will error. But you'll often see this done in Ruby code, so it's good to be aware of it.
```ruby
puts "AAA".length.even? # false
puts "AA".length.even?  # true
```

### Classes
An object's "class" decides what methods are available on it.

- Can get a list of the methods available on an object with the methods method: p 2.methods.sort, p "AA".methods.sort
```ruby
$ irb
2.3.0 :001 > 2.methods.sort
 => [:!, :!=, :!~, :%, :&, :*, :**, :+, :+@, :-, :-@, :/, :<, :<<, :<=, :<=>, :==, :===, :=~, :>, :>=, :>>, :[], :^, :__id__, :__send__, :abs, :abs2, :angle, :arg, :between?, :bit_length, :ceil, :chr, :class, :clone, :coerce, :conj, :conjugate, :define_singleton_method, :denominator, :display, :div, :divmod, :downto, :dup, :enum_for, :eql?, :equal?, :even?, :extend, :fdiv, :floor, :freeze, :frozen?, :gcd, :gcdlcm, :hash, :i, :imag, :imaginary, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :integer?, :interesting_methods, :is_a?, :itself, :kind_of?, :lcm, :magnitude, :method, :methods, :modulo, :negative?, :next, :nil?, :nonzero?, :numerator, :object_id, :odd?, :ord, :phase, :polar, :positive?, :pred, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :quo, :rationalize, :real, :real?, :rect, :rectangular, :remainder, :remove_instance_variable, :respond_to?, :round, :send, :singleton_class, :singleton_method, :singleton_method_added, :singleton_methods, :size, :step, :succ, :taint, :tainted?, :tap, :times, :to_c, :to_enum, :to_f, :to_i, :to_int, :to_r, :to_s, :truncate, :trust, :untaint, :untrust, :untrusted?, :upto, :zero?, :|, :~]
2.3.0 :002 > "AA".methods.sort
 => [:!, :!=, :!~, :%, :*, :+, :+@, :-@, :<, :<<, :<=, :<=>, :==, :===, :=~, :>, :>=, :[], :[]=, :__id__, :__send__, :ascii_only?, :b, :between?, :bytes, :bytesize, :byteslice, :capitalize, :capitalize!, :casecmp, :center, :chars, :chomp, :chomp!, :chop, :chop!, :chr, :class, :clear, :clone, :codepoints, :concat, :count, :crypt, :define_singleton_method, :delete, :delete!, :display, :downcase, :downcase!, :dump, :dup, :each_byte, :each_char, :each_codepoint, :each_line, :empty?, :encode, :encode!, :encoding, :end_with?, :enum_for, :eql?, :equal?, :extend, :force_encoding, :freeze, :frozen?, :getbyte, :gsub, :gsub!, :hash, :hex, :include?, :index, :insert, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :interesting_methods, :intern, :is_a?, :itself, :kind_of?, :length, :lines, :ljust, :lstrip, :lstrip!, :match, :method, :methods, :next, :next!, :nil?, :object_id, :oct, :ord, :partition, :prepend, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :remove_instance_variable, :replace, :respond_to?, :reverse, :reverse!, :rindex, :rjust, :rpartition, :rstrip, :rstrip!, :scan, :scrub, :scrub!, :send, :setbyte, :singleton_class, :singleton_method, :singleton_methods, :size, :slice, :slice!, :split, :squeeze, :squeeze!, :start_with?, :strip, :strip!, :sub, :sub!, :succ, :succ!, :sum, :swapcase, :swapcase!, :taint, :tainted?, :tap, :to_c, :to_enum, :to_f, :to_i, :to_r, :to_s, :to_str, :to_sym, :tr, :tr!, :tr_s, :tr_s!, :trust, :unicode_normalize, :unicode_normalize!, :unicode_normalized?, :unpack, :untaint, :untrust, :untrusted?, :upcase, :upcase!, :upto, :valid_encoding?]
 ```

- The object's class decides which methods are available on it.
- You can call the class method on any object to find out what its class is.
```ruby
2.3.0 :003 > 2.class
 => Fixnum
2.3.0 :004 > "AA".class
 => String
 ```

- You already know how to create objects from the String and Fixnum classes.
	- Just include text between quotation marks in your code, and you'll have a String
	- Likewise, just include a whole number in your code, and you'll have a Fixnum
```ruby
2.3.0 :003 > 2.class
 => Fixnum
2.3.0 :004 > "AA".class
 => String
 ```

For other classes, you usually have to call a method on the class to get an instance of it. For example, earlier we briefly showed how to get an instance of the Time class, which represents the current time, by calling the Time.now method.
```ruby
2.3.0 :005 > time = Time.now
 => 2017-09-02 23:11:23 -0700
2.3.0 :006 > time.class
 => Time
 ```

Here are links to documentation on some Ruby classes and their methods:

tring [class](https://ruby-doc.org/core-2.3.0/String.html)
Fixnum [class](https://ruby-doc.org/core-2.3.0/Fixnum.html)
[reverse method for String objects](https://ruby-doc.org/core-2.3.0/String.html#method-i-reverse)
[length method for String objects](https://ruby-doc.org/core-2.3.0/String.html#method-i-length)
[chomp method for String objects](https://ruby-doc.org/core-2.3.0/String.html#method-i-chomp)

**Using "chomp" to Fix Our Output**

Let's use the new method we found in the String class documentation to fix our widget store program's output.

If we try to run the widget store program as it is now, the gets method returns the string the user types with a newline character on the end. This messes up the output when we try to print it. But when we looked at the documentation for the String class, we learned that strings have a method named chomp that can remove newline characters from the end of the string.

- Chain a call to chomp onto the return value of the gets method.
```ruby
def ask(question)
  print question + " "
  gets.chomp # Add ".chomp" here
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
puts "You entered #{answer} widgets"
```
Output:
```
Welcome to the widget store!
How many widgets are you ordering? 10
You entered 10 widgets
```

- In ask method, keyboard input is returned from gets, with a newline character on the end
- We chained a method call to chomp after the call to gets, so chomp gets called on the return value of gets.
chomp returns a new string with the newline character removed.
- That's what gets returned from the ask method, stored in the answer variable, and then displayed on the terminal.

## Numbers

### Numeric Types

Programming languages use strings a lot, but they use numbers even more often. Numbers in Ruby can be used in all the math operations that other programming languages support. But unlike in most other languages, numbers in Ruby are also objects. That means they have lots of useful methods attached to them, just like with strings.

Here we have some code that assigns the integer 12 to a variable named whole_number, and the fractional number 12.34 to a variable named fractional_number. That dot within the numbers is important, because it decides which of Ruby's two most common numeric classes the number gets assigned to.

```ruby
whole_number = 12
fractional_number = 12.34
p whole_number.class # Fixnum [Integer in Ruby 2.4 and later]
p fractional_number # Float
```

- If we set fractional_number to 12.0, it'll still be treated as a Float. The key is whether it contains a decimal place or not.
- The distinction between Fixnum/Integer and Float classes is important, partly because it affects what methods are available on a number.
- If the number in your code has a decimal point, it's a Float. Otherwise, it's a Fixnum/Integer.

## Math Operations

If we're going to multiply the quantity of widgets by the price to get the total, we're going to need to know how to do math operations. Really, math operations like addition, subtraction, multiplication, and division are central to almost any programming language, so most languages make them easy to do. Ruby is no exception.

Math operators take the values to their left and right and perform a math operation on them. The four most common operators add, subtract, multiply, or divide values.

```ruby
+
-
*
/
```

Let's launch irb, so we can try out a bunch of operations and immediately see the results.

```ruby
$ irb
2.3.0 :001 > 2 + 3
 => 5
2.3.0 :002 > 12 - 4
 => 8
2.3.0 :003 > 5 * 8
 => 40
 ```

For division operations, if you use two Fixnum/Integer objects, any fractional part of the result will be truncated. Ensure that at least one of the operands is a Float for division operations.

```ruby
2.3.0 :004 > 7 / 4   
 => 1 # Should be 1.75, but gets truncated!
2.3.0 :005 > 7.0 / 4
 => 1.75
2.3.0 :006 > 7 / 4.0
 => 1.75
 ```

Variables can be used in any part of the math operation.

```ruby
2.3.0 :007 > number = 2
 => 2
2.3.0 :008 > number + 3
 => 5
2.3.0 :009 > 4 * number
 => 8
 ```

Using a variable in a math operation leaves the value in that variable unchanged

```ruby
2.3.0 :010 > number = 2
 => 2
2.3.0 :011 > number + 3
 => 5
2.3.0 :012 > number
 => 2
 ```

You can do a math operation on a variable, and then assign the result back to that variable

```ruby
2.3.0 :013 > number = 2
 => 2
2.3.0 :014 > number = number + 1
 => 3
2.3.0 :015 > number
 => 3
2.3.0 :016 > number = number + 1
 => 4
2.3.0 :017 > number
 => 4
2.3.0 :018 > number = number - 1
 => 3
2.3.0 :019 > number
 => 3
2.3.0 :020 > number = number * 2
 => 6
2.3.0 :021 > number
 => 6
2.3.0 :022 > number = number / 2.0
 => 3.0
2.3.0 :023 > number
 => 3.0
 ```

Abbreviated assignment operators let you take the value in a variable and add to it, subtract from it, multiply it, or divide it, then reassign the result back to the same variable.

```ruby
2.3.0 :001 > number = 2
 => 2
2.3.0 :002 > number += 1
 => 3
2.3.0 :003 > number
 => 3
2.3.0 :004 > number += 1
 => 4
2.3.0 :005 > number
 => 4
2.3.0 :006 > number -= 1
 => 3
2.3.0 :007 > number
 => 3
2.3.0 :008 > number *= 2
 => 6
2.3.0 :009 > number
 => 6
2.3.0 :010 > number /= 2.0
 => 3.0
2.3.0 :011 > number
 => 3.0
 ```

## Operator Precedence

You can chain math operations together. But sometimes the order you carry those operations out affects the final result. Let's look at the rules surrounding the order of operations.

- You can chain operations together: 1 + 2 + 3
- Order of operations you were taught in math class applies in Ruby too.
- Take 1 + 2 * 3. If you didn't have order of operations, you'd assume that you add 1 to 2, getting 3, and then multiply 3 * 3 to get 9. But instead we get 7.
- This is because of order of operations. In chained math operations, multiplication and division operations always come first, and addition and subtraction second:

```
* / + -
```

- Ruby respects this concept by following something called operator precedence. That is, the evaluation of some operators precedes the evaluation of some other operators. The multiplication and division operators have higher precedence than addition and subtraction operators.

- So that's why when we evaluate 1 + 2 * 3, we get 7 and not 9. The multiplication operator has higher precedence than the addition operator, so we do the multiplication first, giving us 6. We then add 1 and 6, giving us 7.

- Suppose we wanted to ensure that the addition operation occurs first. If we were working in a math textbook, we'd add parentheses around the operation to indicate it should go first, no matter what: (1 + 2) * 3.

- And that same notation works in Ruby. Ruby will always evaluate math operations within parentheses first, before it goes on to evaluate the rest of the expression. So with the parentheses, 1 + 2 is evaluated first, giving 3, and then that's multiplied by 3 to give 9.

## Converting Strings to Numbers

If you try to treat a string like a number, you may get strange results. Let's learn how to convert strings that contain a number to actual numbers.

- If you use the * operator on a string, it repeats the string the number of times you supply.
- That can give you strange results if you try to treat a string containing a number as if it was an actual number.

```ruby
puts "A" * 10 # AAAAAAAAAA
puts "7" * 10 # 7777777777
```

We need to use one of these methods to convert the string to an actual number before multiplying it.

(to_f documentation)[https://ruby-doc.org/core-2.3.0/String.html#method-i-to_f]
(to_i documentation)[https://ruby-doc.org/core-2.3.0/String.html#method-i-to_i]

```ruby
puts "7".to_i * 10 # 70
```

**Widget store**

Let's use the to_i method to convert the string the user entered to an actual number, then multiply the result:

```ruby
def ask(question)
  print question + " "
  gets.chomp
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
puts "For #{number} widgets, your total is: $#{number * 10}"
```

Output:
```
Welcome to the widget store!
How many widgets are you ordering? 7
For 7 widgets, your total is: $70
```
