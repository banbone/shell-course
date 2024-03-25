## Let's write a function!
We're going to write a calculator function that allows us to enter two numbers and print their sum to the terminal. To complete this task, you can choose to write your function directly in the terminal, or use the code block at the bottom of this page. 

The terminal allows you to just hit 'up' to bring the last command back, but you have to do it all on one line and scrolling with the arrow keys is a pain. 

Using the code block allows you to use the mouse and make your function multiline, but you need to remember to copy and paste it into the terminal after every change.

> NOTE - Make sure you separate each command in your functions with a `;` semicolon, as this tells the shell interpreter where one command ends and another begins

#### Step 1
Define a function called `calc`. Just leave it empty for now.
Run the below command to see where the functions is now defined in your terminal session:
```sh
declare -f | grep -n2 -e ^calc | tail -n 3
```
You should see some output like this:
```
7196:calc () {
7197-
7198-}
```

#### Step 2
We want our function to capture the first two arguments provided to it. We can do that using positional variables. As we know, all of the arguments we type after a command are in turn provided to that command in a list, in the order they were received. 

We can access the first two arguments using the `$1` and `$2` positional variables.

In between the curly brackets, create two variables that will hold our input integers; `INT_1` and `INT_2`; and assign the positional variables `1` and `2` respectively to them. Use a semicolon `;` to separate the two assignments into two commands.

Run the below command to see what the function now looks like:
```sh
declare -f | grep -n3 -e ^calc | tail -n 4
```

#### Step 3
Let's add the business logic to our function. After the `INT_x` variables, we now want to create a third variable using a command substitution. We'll want to perform some math so we can do this using the double-bracket syntax.

Create a new variable after `INT_2` called `RESULT`, and assign the output of this expression to it:
```sh
$(($INT_1 + $INT_2))
```

You can check the function is set by running this command:
```sh
declare -f | grep -n4 -e ^calc | tail -n 5
```

#### Step 4
Now all that's left to do is print the output to the terminal. To do this, we'll use the `printf` command. This is similar to the `echo` command, but it gives us more control over formatting, and lets us remove invisible trailing newline `\n` characters from our output to make it script compatible.

Add a final step to your function to print the output:
```sh
printf '%s' $RESULT
```

#### Step 5
Give your function a test! If you enter the following command:
```sh
calc 5 3
```
You should receive `8%` as an output.
> Note: in shell output, `%` is often used as shorthand for `\0` or null-byte, and signifies the end of any output in the absence of a newline `\n` or `\r` carriage return character. You can ignore the `%` 😀 as it won't appear when used in context

#### Step 6
Use your `calc` function, the `echo` command and command substitution `$()` to print out the following message to your terminal:
`I have 7 slices of bread to see me through the next 9 days`
You **MUST NOT** use the characters '7' or '9'!

Paste your command here:
```sh
# Your answer here

```

### Code block:
Use the below to write your function over multiple lines if you prefer! Don't forget to copy/paste between edits!
```sh





```