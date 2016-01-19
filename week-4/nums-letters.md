#### What does puts do?

The command puts will print the output to the console, just like the print command, but unlike the print command, it will also print a new-line character. As said, they both display the output, but they won't actually return a value; they both return nil. If you want to print the output and also return a value, you can use the p command. 

#### What is an integer? What is a float?

An integer is a number without a decimal, such as 1, 5000, and -45. A float, on the other hand, is a number *with* a decimal number. You would want to use floats for academic programs requiring physics measurements or for 3D graphics, for example, but according to Pine, most programs choose to use integers; even money programs use integers by keeping track of the number of pennies (which is an integer), rather than dollars (which is a float).


#### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When you divide using floats, you will get the expected accurate answer, similar to what you'd get on a calculator. For instance, 9.0/2.0 = 4.5. But when dividing integers, you get an integer result: so 9/2 = 4. But we know that this isn't an accurate answer, right? In fact, it is. With integer division, any inaccurate result (i.e., a result that isn't an integer) will be rounded. And the rounding is always *down*. This may seem like a foolish and inaccurate result, but it actually makes a lot of sense in many real-world situations when you are dealing with indivisible items, such as cars sold, or number of pets. Your dog may be dim-witted, but he still shouldn't be counted as half a dog.

#### Hours in a year

```
p 24 * 365
``` 

#### Minutes in a decade

```
p 60 * 24 * 365 * 10
```

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Addition is handled exactly as would be expected from a calculator, but it is worth noting that if two integers are added, the result will be an integer, but if one or both of the addends is a float, the result will be a float. All of this is also true for subtraction and multiplication. When dividing, the quotient is not always as one would expect from a calculator, which uses only floats. If you divide two integers that don't equal a whole number when divided, you will get an integer quotient, which is the true quotient rounded down to the nearest integer. If the divisor or dividend is a float (or if both are), the result will also be a float.  

#### What is the difference between integers and floats?

An integer is a whole positive or negative number (-3), and a float has a decimal point (-3.0). They are still treated as normal numbers, but including one or the other in an arithmetic statement will affect the type of the returned result (see previous answer).
```
example_integer = -75
example_float = -75.0
```

#### What is the difference between integer and float division?

(See above) When dividing, the quotient is not always as one would expect from a calculator, which uses only floats. If you divide two integers that don't equal a whole number when divided, you will get an integer quotient, which is the true quotient rounded down to the nearest integer. If the divisor or dividend is a float (or if both are), the result will also be a float.
```
12/3 
=> 4

12/3.0
=> 4.0
```

#### What are strings? Why and when would you use them?

Strings are a literal collection of characters, and they are marked in a ruby script by 'single' or "double" quotes. You use them when you need to store some sort of non-numeric value in a variable, or if you need to return or output non-numeric text. It can also be used to store numeric data as text (rather than as the mathematically useful numbers they represent). Strings are helpful for names, sentences, words, etc. 

```
example_string1 = 'hello'
example_string2 = "123"
```

#### What are local variables? Why and when would you use them?

Local variables are reusable stored-value containers that are accessible in your current script's scope. You use them any time that you want to store a value to be able to use later in your script. This prevents you from having to recalculate the same value in the same way multiple times and it allows you to share values among different functions.

#### How was this challenge? Did you get a good review of some of the basics?

This was a good, easy review of the basics, as we went much further than this in the pre-application tutorial on Codecademy. Still, it's helpful in that the readings go more in depth about some of the edge cases where the behavior may be a little different than expected (as when dividing integers or multiplying a string of numbers like '22' by an integer).

#### *Solution links*

- [Defining Variables](defining-variables.rb)
- [Basic Math](basic-math.rb)
- [Simple String](simple-string.rb)
