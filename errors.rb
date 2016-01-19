# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [.25] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home." 
# 1. What is the name of the file with the error?
# 		errors.rb
# 2. What is the line number where the error occurs?
#  		8
# 3. What is the type of error message?
#  		syntax error
# 4. What additional information does the interpreter provide about this type of error?
# 		unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
#  		after the end of the second string on line 8, before the variable name
# 6. Why did the interpreter give you this error?
# 		the correct syntax is to put the variable name at the beginning of the line, and the '=' and value after it

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 		errors.rb
# 2. What is the line number where the error occurs?
#  		182
# 3. What is the type of error message?
#  		syntax error
# 4. What additional information does the interpreter provide about this type of error?
# 		unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#  		between lines 27-28 
# 6. Why did the interpreter give you this error?
#   	the while loop must be finalized by an end keyword. As it is, there is only an end keyword to close the method itself, but there also needs to be one at the end of the while loop. Also, it appears that the while loop will continue ad infinitum.		

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 		48
# 2. What is the type of error message?
#  		undefined local variable or method - NameError
# 3. What additional information does the interpreter provide about this type of error?
#   	undefined local variable or method "south_park" for the main:Object scope
# 4. Where is the error in the code?
# 		we have put a variable or method name (south_park) without first defining it as a method or assigning it a value as a variable in the program
# 5. Why did the interpreter give you this error?
# 		it will not know what to do with this command because we have not assigned any meaning to it yet

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 		63
# 2. What is the type of error message?
# 		undefined method - NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#  		undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# 		at the statement cartman(), which appears to call a method without passing arguments, but without defining a method named cartman first
# 5. Why did the interpreter give you this error?
# 		it is attempting to call a method that does not exist.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 		Multiple lines are given: error in line 78, from line 82
# 2. What is the type of error message?
# 		ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# 		Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# 		At the point in line 82 where the method cartmans_phrase is called with a string passed as a argument
# 5. Why did the interpreter give you this error?
# 		The method definition does not include any arguments, but we called the method with one argument

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 		97, 101
# 2. What is the type of error message?
# 		ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  		Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# 		When the method is called as cartman_says
# 5. Why did the interpreter give you this error?
# 		The method is defined as requiring one argument, but the method was called with zero arguments passed to it



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 		118, 122
# 2. What is the type of error message?
# 		ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# 		Wrong number of arguments given (1 for 2)
# 4. Where is the error in the code?
#  		Where cartmans_lie is called with a single argument (a string)
# 5. Why did the interpreter give you this error?
# 		The method is defined as receiving two arguments, but we only passed one argument when we called it

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 		137
# 2. What is the type of error message?
# 		TypeError
# 3. What additional information does the interpreter provide about this type of error?
# 		String can't be coerced into FixNum
# 4. Where is the error in the code?
#  		multiplying 5 times the string
# 5. Why did the interpreter give you this error?
#  		The interpreter expects to receive another integer as the second argument to the * method, but instead it received a string, and it was not able to coerce the string into an integer. It is interesting to note that if the string were the first parameter and the 5 were the second, it would've printed the string 5 times, without an error.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 		152
# 2. What is the type of error message?
#  		ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# 		Divided by 0
# 4. Where is the error in the code?
# 		The arithmetic statement 20/0
# 5. Why did the interpreter give you this error?
# 		Basic math principles dictate that a number cannot be divided by 0; The result is neither 0, infinity, imaginary, nor real.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 		168
# 2. What is the type of error message?
#  		LoadError
# 3. What additional information does the interpreter provide about this type of error?
#  		Cannot load such file (specifies the filepath)
# 4. Where is the error in the code?
# 		The require of "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# 		The file does not exist, at least not in the specified path, so it could not be loaded


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# --- The most difficult error to read was the one that claimed that the error was located on the last line of the document. 

# How did you figure out what the issue with the error was?

# --- When I realized the interpreter was expecting a piece of information and merely reached the end of the script without finding it, it meant that there must be an issue with closing a piece of code with the end keyword or something similar. I did remember that while loops need their own end keyword to close the loop, and even though there was an end keyword present, it was actually the one that was closing the method definition, not the one that closed the while loop.

# Were you able to determine why each error message happened based on the code? 

# --- Yes, I could see why the errors were happening, and the console's error messages made it easy to locate. However, it was a surprise that the error occurred when trying to multiply 5 times a string. I knew that it was possible to multiply a string times an integer, which results in a string repeated that many times, but I didn't realize it had to be in that order. If the number is the first argument, then the interpreter will expect the second argument to also be a number, and if it is not a number, it will attempt to coerce it into one. I don't know at this point what can and cannot be coerced into a number, and I will also test in irb right now whether a string can be multiplied by a float. (update: it can, but it will round the float down to the nearest integer).

# When you encounter errors in your future code, what process will you follow to help you debug? 

# --- I will read the outputted error message, locate the line number cited, gather information from the error message about the error type and any additional information, and i will trace the steps if multiple line numbers are given, and then finally, I will determine what is causing the error and attempt to fix it!




