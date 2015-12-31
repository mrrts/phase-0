## 1.1 Think About Time

In addition to my new coding skills, this Release is making me look forward to embracing DBC as a time to develop some great new productivity habits. I have implemented some sort of "Pomodoro" and "Time Boxing" methods often in my life, though not with consistency, and I can see how preceding these techniques with some mindfulness meditation could help to focus the mind toward a "flow" state. I must say that I currently don't have a reliable system for time management because my shift-scheduled job makes it very hard to establish repeatable routines and patterns: I work in the morning one day, in the evening the next. I hope to eventually move into a consistent pattern of time-boxing and Pomodoro-style work/break segmentation. It's much easier to keep distractions and other pressing concerns at bay if you know that the current chunk of time is reserved for only this particular task. I also am a big fan of writing down anything that floats through your mind that isn't part of the task at hand, to be revisited later. I also have already discovered the value of breaking daunting tasks into many approachable micro-tasks. 

I'm not sure how I'll practically implement all of these things into Phase 0, but I will start with the following template: 1) Start a work session with a 5-10 minute meditation, 2) Write down an adjustable micro-task schedule for the next few hours, and 3) Set a timer for, say, 25-minute focus bursts with 5-minute breaks in between. So many things changing-- let's try and change habits, too!

## 1.2 The Command Line

A shell is a command center for a computer where a user can read, write, and execute files and processes using only text-based commands. Bash is the shell language used on Unix-based systems. I mostly found the material pretty straightforward and easy to follow, but I was surprised at the multitude of different flags and arguments that each command can take. It seems difficult to remember when to use -l or -d or -f or ctrl-d, especially since those flags mean different things in different contexts. However, being able to research the various commands in the manual using "man" seems like a great way to quickly examine the options available without needing to leave the shell environment. 

I was able to execute all of the commands successfully, and I found myself getting the hang of certain commands and being able to feel fluent with them after awhile. Shell use is a skill that will improve with frequent use, and I want to challenge myself to use it as much as possible and not revert to the less efficient graphical interface. 

I believe the most important commands will probably be the ones that deal with navigating the file structure and creating/renaming/copying/moving/deleting files (pwd, cd, mv, ls, .., rm, touch, mkdir, rmdir, cp, etc). I don't think I'll opt for the in-shell text editor used in the demo video, though, since it doesn't provide the syntax coloring that a graphical editor would. 

pwd : short for "print working directory." It prints the current directory path.

-ls : lists all of the files in the current directory, unless you provide an argument with a different directory

-mv : moves a file from one location to another. This can be used to rename a file by "moving" the file to another file in the same directory with a new name.

-cd : "change directory." It will relocate you to the directory specified.

-../ : used in a file path to indicate "up one level" or "parent/enclosing folder"

-touch : used to create a file quickly in the specified path with the specified filename. 

-mkdir : "make directory" creates a new folder with the specified name. 

-less : displays the contents of a file in a paginated display rather than dumping the entire contents onto the screen all at once.

-rmdir : "remove directory" will delete a directory, or folder, unless it has contents, in which case you have to either rm those things first, or use the -r flag. 

-rm : "remove", deletes the specified file(s)

-help : displays some help text regarding the shell environment and which commands may be used

## 1.4 Forking and Cloning

To create a new repository on GitHub, follow these steps:

- Go to github.com and log in
- On the main page, click the "+" near your profile-image thumbnail in the top menu bar, and choose "New Repository"
- On the New Repository page, enter a name for your repo
- Choose whether the repo will be publicly viewable or private
- Add an MIT license for your repo
- Click "Create Repository"

To fork a repo, follow these steps:

- Navigate to the page for a repository you'd like to fork
- Click the fork button in the top right area of the page, just underneath the main menu bar
- Choose the account context in which you'd like to fork the repo, if applicable
- Go to your main account page and verify that the fork is listed in your repo list

To clone a repo, follow these steps:

- Navigate to the page for a repository you'd like to clone
- Copy the SSH or HTTPS url provided in the text box just above the file list
- Open your local machine's shell and navigate ("cd") to the directory which you'd like to contain the clone
- Type "git clone <THE URL>"
- Enter your github username and password, if needed


Forking a repository allows you to start with pre-established code and build new features into it on your own branch. If you simply created a new repository, you'd be starting an empty project from scratch. If you don't need to reinvent the wheel but feel you could improve some other individual's or team's solution, you should fork their repository. 

I didn't experience any struggles setting up git and GitHub, as the instructions were clear and simple. But I learned how easy the creating/forking/cloning process is, and I learned that GitHub automatically moves the fork to your account, showing it with a "fork" icon so that you don't appear to be claiming credit for the entire project. 
