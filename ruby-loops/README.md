# Ruby Loops

## Ruby Loops

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