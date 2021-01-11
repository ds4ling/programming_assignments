## Assignment 4

**Topics**: Project management, tidying data, HTML Presentations

### Overview

In this assignment you will create an RStudio project in which you get, 
tidy, transform, analyze and plot data from a publicly available dataset. 
You will host your project in a GitHub repo and create HTML slides to present
your analysis. 

**Assigned**: 02/27  
**Due**:  Tuesday, 03/06 before 10pm

### Instructions

1. Create a new project in RStudio called ```pa4```. Inside your new project, 
create three folders: ```data_raw```, ```data_clean```, and ```slides```. 
2. Download the dataset available [here][pa4_fricatives] and store it in 
```data_raw```. 
3. Generate an HTML presentation using your choice of **ioslides** or 
**xaringan**. Save the RMarkdown file as ```index.Rmd``` inside of the folder 
```slides```.
4. Load the dataset from your ```index.Rmd``` file. 
5. Tidy the data. 
6. Provide a table of descriptive statistics. 
7. Make a boxplot of center of gravity as a function of phoneme. In another 
slide, plot skewness as a function of phoneme. Use a statistical 
transformation (i.e., not a boxplot).
8. Fit a model that examines center of gravity as a function of skewness for 
the [s] segments (hint: you will have to transform the data). Make a table of 
the model summary.
9. Make a scatter plot that illustrates the relationship in (8). 
10. Check model diagnostics. Make plots. 
11. Write up the results (as if it were for a journal article).
12. Host your project in a GitHub repo called ```pa4```. 
13. Turn the slides into a website using GitHub pages. 
14. Inside your dropbox in ```datasci_assignments```, create a folder called 
```pa4``` that includes a ```README.md``` file with a link to your slides. 
15. Push changes to your version of ```datasci_assignments``` and submit a 
pull request.

### Evaluation

This is programming assignment 4 of 4. It is worth 10 of the 40 possible 
points. In order to receive full credit you must complete steps 1-15 above 
and follow **all** the instructions. 

|                  Task                  | Points |
| :------------------------------------- | -----: |
| Tidy data                              |      2 |
| Descriptive stats                      |    0.5 |
| Plot data                              |      1 |
| Fit a model                            |      2 |
| Assess and interpret model             |      2 |
| Publish HTML slides using GitHub Pages |      2 |
| Successfully submit pull request       |    0.5 |
| **Total**                              |     10 |


### Tips

- Follow every instruction step-by-step. 
- Worry about tidying your data, fitting your models, making plots, etc., 
**before** you worry about making the presentation (i.e., making each 
individual slide). It might be a good idea to use an R script first, as we 
have done in class. 
- Search for help when you get stuck, use stackoverflow and slack. 
- Think of this PA as a practice exam. Use all of the skills you have developed 
up to this point in the class. 
- Review fetching changes in GitHub (to update your **datasci_assignments** 
repo) and submitting pull-requests (to 'turn in' your assignment). 

---
