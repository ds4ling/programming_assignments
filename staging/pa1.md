## Assignment 1

**Topic**: GitHub

### Overview

In this assignment you will practice the basics of working with project repos
using GitHub and the GitHub desktop app. Specifically, you will fork this 
repo, clone it to your computer, contribute to it, push changes from your local 
repo (your computer) to your upstream branch (your forked copy on GitHub), and, 
finally, submit a pull request to merge your contribution with the master repo 
(the professor's copy).

**Assigned**: Week 1  
**Due**: Monday, 1/22 before 10pm  

### Instructions

1. If you have not already done so, fork this repo and clone it to your computer.
2. In your local copy create a personal 'dropbox'
    1. create an empty folder named "lastname\_firstname" (ex. 
    casillas\_joseph). Put it inside ```misc > students```.
    2. create another **README.md** file and place it inside your personal 
    folder. Include the following info:
        - Your name
        - Your email
        - Your personal website if you have one
        - A goal you have for this class
3. Create another folder. Name it ```summaries``` and place it inside your 
personal dropbox folder. Next, read [Wickham, 2015][w2015]. Create a file called 
**wickham\_2015\_summary.md** and write a 4 sentence summary about the article. 
Save this file in ```summaries``` inside your personal dropbox (the 
lastname\_firstname folder you just made). 
4. Read [R4DS][R4DS] Preface - Ch. 2 (p. ix-41). Do all examples included in the 
text as you read (nothing to turn in).
5. Read QML Ch. 1 (pp. 1-33). Do the R examples included in the text as
you read (nothing to turn in).
6. Commit the changes to your upstream branch. Check your repo on GitHub to 
make sure it worked, and then submit a pull-request. It should include the 
following...
    1. your dropbox folder (lastname\_firstname)
    2. a README.md file
    3. a summaries folder (inside your dropbox)
    4. your Wickham (2015) summary (wickham_2015_summary.md)

### Evaluation

This is programming assignment 1 of 4. It is worth 10 of the 40 possible 
points. In order to receive full credit you must complete steps 1-6 above 
and follow all the instructions. 

|                 Task                | Points |
| :---------------------------------- | -----: |
| Create a dropbox folder             |      1 |
| Include a README.md                 |      1 |
| Create a summaries folder           |      1 |
| Include a summary of Wickham (2015) |      2 |
| Successfully submit a pull request  |      5 |
| **Total**                           |     10 |


### Tips

This is how the file structure currently looks:

```
datasci_assignments
       │
       ├── README.md
       └── misc
           ├── links
           │   └── README.md
           └── students
               ├── README.md
               └── firstname_lastname
                   ├── README.md
                   └── summaries
                       └── wickham_2015_summary.md
```

Take a look inside the ```lastname_firstname``` folder if you need an example 
(this is highly recommended). Your personal dropbox should look exactly the 
same, but with your information, summaries, etc. In other words, you will add 
a folder inside ```students``` that looks like this (I am using my name, you 
will use your name):

```
casillas_joseph
        │
        ├── README.md
        └── summaries
            └── wickham_2015_summary.md
```

Remember to check the [GitHub setup tutorial][githubtut] if you need help pushing 
your changes and submitting a pull request.

---
