## I/O Redirection
We're going to play around with redirection here. This means taking the output of one instruction and doing something else with it, all with one press of the return key. You can chain redirections to make some truly epic commands, making it a very powerful tool.

#### Q1
Use the `curl` command to retrieve the readme file at `https://raw.githubusercontent.com/banbone/shell-course/main/README.md`, and use the `|` pipe to redirect the output into `less` so we can read it line by line. Paste your command below:
```sh
# your answer here

```

#### Q2
Try multiple redirects! Retrieve the same readme file again with `curl` but this time, use pipes and `grep` to filter the output to only show the lines that contain the string `ing`. 
Then, use another pipe to the `head` command to just show the first 3 lines of output. Paste your command below:
```sh
# your answer here

```

#### Q3
Using a redirection arrow, send the first 5 lines of `src.txt` to a new file called `top.txt`, and paste your command below:
```sh
# your answer here

```

#### Q4
Repeat the previous step with a new file called `topbtm.txt`. Then, append the new file with the last 5 lines of `src.txt` using redirection arrows. 
The complete operation should take two commands; one to create and insert the first part of text, and one to append the file. Paste the command you used to append below:
```sh
# your answer here

```

#### Q5
We're going to repeat the question 2 but make it a bit tidier. Use the command you produced in question 2, but redirect the output using an arrow to a file called `result.txt`. Paste your new command below:
```sh
# your command here

```

#### Q6
That looks a lot tidier, the output has been sent directly to a file. But we still get some output from the `curl` command being displayed in the terminal and not being captured in a file. This is because the progress message printed by `curl` is sent on STDERR, and therefore isn't redirected by the pipe.
Use what you know about STDOUT & STDERR to redirect just the `curl` progress output to a file called `stderr.log` while making sure the rest of the command behaves the same.
Paste your command below:
```sh
# your answer here

```