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