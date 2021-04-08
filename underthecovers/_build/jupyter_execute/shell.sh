# UNIX  -- An operating System Built by Programmers for Programmers

The UNIX operating system was built by master programmers who valued programmablity and productivity.  In some sense learning to work on the UNIX systems is a right of passage that not only teaches you how to be productive on a computer runnig the UNIX operating system but teaching you to think and act like a programmer.

## The Shell -- Progammable Interface to the computer

Given its history and programmer bent UNIX's primary interface -- or way of interacting with it to get things done is a program called the "shell".  In the following sections we will introduce various aspects of the shell, UNIX and fundamental ideas common to all modern operating systems.    

### Getting started -- The Terminal and this book

To work with a UNIX computer you must establish, one way or another, a plain text (ASCII) interactive session. 
We will learn what ASCII is later... for the moment is away of entering and displaying the basic english characters, numeric digits, and standard punctuation.  

To do this you must start a "Terminal" session.  A "Terminal" is an ASCII application that is designed to accept characters from your keyboard and send them to a program and similarly characters sent from the remote program will be displayed by the terminal program for you to read.  

On Windows you can start a terminal by using the PowerShell program and on OSX you can use the Terminal Application.  

The next step, after starting a terminal emulator, is to connect it to a computer running UNIX. Today we typically use a program called `ssh` to establish this connection. Both Windows and OSX come with `ssh` that you can invoke from within the terminal.   `ssh` takes a hostname of the computer as an arugment and then uses network protocols to establish a terminal connection to the specified computer.   In response to establishing the connection the UNIX computer will prompt you to identify yourself with your username and password.  This is called logging.

Uppon succesfully logging in the remote UNIX computer will start a shell programming running for you and from that point on anything you do or see in that terminal window is going to or coming from that remote computer.   So that terminal connection is actually a window into another computer!  You can start more windows to create more concurrent connections to the same or other remote computers.  Doing so can be very useful to improve your productivity.  

However to make life a little easier in this book we use features of Jupyter to both create terminal sessions and establish connections to a UNIX computer from within the pages of the book themselves.  This allows you to directly and immediately explore the things we discuss.

We do encourage you to poke around outside of this book using a terminal emulator and ssh to get a better feel for what is actually happening and so that you can have more control.  In the 'real world' (and in later classes) you will be expected to understand how to use your personal computers, tablets and even phones to establish terminal connections to other computers and know how to get work done on them.

from IPython.display import IFrame
IFrame('http://localhost:8888/terminals/1', 800, 400)

### Command Line Anatomy

Our interactions with the shell are "line oriented".
That is to say that once we are connected to the shell it will be waiting for us to enter a command.
To indicate this it will print a "prompt" at the beginning of a line.  Cannonically the prompt is often  (If you are intested you can lookup how to customize the prompt to something you prefer)

Commands are a plain text "key" words that the shell will "execute" for us.
To get the shell to do something we enter the command along with any arguments and modifies and then press 
enter or return key to terminate the line and submit it to the shell.  At this point the shell will analyize the line we entered and will execute the command it it can.

If we like we can place multiple commands to execute one after the other on a line by seperating them with a semicolon.  `;`

### echo -- printing something to the sceen

Perhaps the most basic command that we can issue to the shell is the `echo` comand.  `echo` allows us to print a message.  For the moment this might seem like a silly command but later we will see that the shell is not just designed to be an interactive interface but also a powerful programming language that we can use to quickly automate things and construct our own commands out of the exiting ones.

echo "Hello World foo bar"

### comments -- Ignoring everthing else  

Another very trival thing we can do is tell the shell to ignore every thing else on the line using the comment character.  In bash this character is the hash character `#`.  A line with the `#` at the beginning of it will be ignored complete and as such there will be no output from it and the shell will simply print out prompt on the next newline.

# this is a comment

echo "Hello World"  # we can use echo to print to the screen

The first example above the `#` at the beginning of the line causes the shell to ignore everything else on the line.  In second example we see that the shell ignores everthing after the # but continues to execute what preceeds it.

### ls -- listing the contents of a directory

With no additional arguments the `ls` command will print out the contents of the current working directory.  That is to say it will print the names of the files and directories that are contained in the current directory.

ls

ls -l

ls -a

ls .

ls ..

ls /

ls /home

ls /home/jappavoo

echo "\$ date"; date
