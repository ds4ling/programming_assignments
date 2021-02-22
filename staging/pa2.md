## Assignment 2

**Topics**: RMarkdown, ggplot  

### Overview

In this assignment you will practice the basics of using .Rmd files to create 
dynamic, reproducible reports in .docx, .pdf, or .html format. 
Moreover, you will show your data visualization skills using ```ggplot2```.

**Assigned**: Week 3  
**Due**: Wednesday, 2/10 before 10pm   

### Instructions

1. Fetch the latest updates in ```programming_assignments``` to your forked branch and pull the changes to your local copy (i.e., the copy on your computer). 
Review the [GitHub setup tutorial][githubtut] if you need a refresher. 
2. Create a folder, ```pa2```, inside your personal dropbox.<sup>[1](#myfootnote1)</sup>
3. In RStudio create an RMarkdown file called ```README.Rmd``` and put it inside the ```pa2``` folder. 
4. Use the following information for the **yaml front matter**:


    title: "Programming assignment 2"  
    author: "Your name"  
    date: "Last update: `r Sys.time()`"  
    output:  
      github_document:  
        highlight: kate  
        keep_md: yes  
        theme: united



5. Install and load the ```languageR``` package from CRAN.
6. Familiarize yourself with three of the following five datasets:
    - **beginningReaders**
    - **danish**
    - **dativeSimplified**
    - **english**
    - **spanishFunctionWords**
7. Inside your ```README.Rmd``` file you will generate 3 different plots 
using ```ggplot2```. You must use 3 of the aforementioned datasets 
(a different dataset for each plot). All plots must include informative 
x-, y-axis labels and a title. The plots you must create are:
	1. A bivariate scatterplot
	2. A boxplot with different fill colors
	3. A plot of your choice that includes a ```stat_summary``` and a facet.
8. Commit the changes in your dropbox to your upstream branch, i.e., your forked copy on github. 
Check your repo on GitHub.com to make sure it worked (notice anything cool when you check
the ```pa2``` folder?), and then submit a pull-request to the `ds4ling/programming_assignments` master repo. 
It should include the following...
    1. your ```pa2``` folder
	2. your ```README.Rmd``` RMarkdown file (and probably a few others)
	3. 3 plots created using ```ggplot```

### Evaluation

This is programming assignment 2 of 4. 
It is worth 10 of the 40 possible points. 
In order to receive full credit you must complete all the steps above and follow all the instructions.

|                Task                | Points |
| :--------------------------------- | -----: |
| Create a pa2 folder                |    0.5 |
| Create a README.Rmd file           |    0.5 |
| Use correct yaml front matter      |      1 |
| Generate 3 specified plots         |      6 |
| Successfully submit a pull request |      2 |
| **Total**                          |     10 |

### Tips

Review Ch. 1 of R4DS for help with ```ggplot```. 
**DO NOT** copy the plots directly from the book or the internet (I'll know). 
Review the [GitHub setup tutorial][githubtut], especially if you are struggling with git-specific terminology. 
Pay special attention to file names, letter case, etc. in order to get the appropriate results. 

This is more or less how your dropbox should look (**Note**: your pa2 folder will have a little more detail than what I have described here. That is fine):

```
casillas_joseph
        │
        ├── README.md
        ├── summaries
        │    └── r4ds_ch1_summary.md
        └── pa2
             └── README.Rmd
```

<a name="myfootnote1">1</a>: Note: you might have noticed that your current copy of ```programming_assignments``` now includes the dropbox folders of your classmates. 
This is on purpose. 
You are encouraged to review your classmates assignments. 
You can learn from them and you will notice that it is possible to solve data science problems using a variety of different methods. 
That being said, you should only review the work of your classmates **after** the assignment has been turned in.

---
