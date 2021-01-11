## Assignment 3

**Topics**: Project management, Tidying data, GitHub Pages

### Overview

In this assignment you will create your own RStudio project in which you get, 
tidy, transform and plot data from publicly available dataset. You will host 
your project in a GitHub repo and create a project website.

**Assigned**: Week 5, 02/13  
**Due**: Tuesday, 02/20 before 10pm

### Instructions

Choose any dataset you want from the ```languageR``` package (it can be the same 
one you used last week). To see all the options, run the following code in RStudio: 

```
data(package = "languageR")
```

#### Setup

1. Create a new project in RStudio called ```pa3```.
2. Host your project in a GitHub repo called ```pa3```.
3. Inside your new project, create an RMarkdown document called ```index.Rmd```

#### EDA

4. Load the dataset of your choice and get information about its structure
5. Tidy the dataset (every variable gets a column, every observation occupies a 
single row), if necessary. 
6. Calculate descriptive statistics of your choice.
7. Select two continuous variables and fit a model to the data (bivariate regression).
8. Generate a plot that includes a regression line.
9. Write up some general observations (1-2 paragraphs max)

#### Share

10. Commit your changes and push them to GitHub 
11. Publish your repo using GitHub Pages
12. Create a new folder inside your dropbox in ```datasci_assignments``` 
called ```pa3```. Include a README.md file with a link to your published pa3 
website. Submit a pull request to the master ```datasci_assignments``` repo. 

### Evaluation

This is programming assignment 3 of 4. It is worth 10 of the 40 possible 
points. In order to receive full credit you must complete all steps in 
**Setup**, **EDA**, and **Share** detailed above, and follow **all** the 
instructions. Moreover, steps 1-5 in *EDA* **must** be completed in 
separate code chunks, and you must comment every step in your code. 

|                Task                | Points |
| :--------------------------------- | -----: |
| Tidy data                          |      1 |
| Descriptive stats                  |    0.5 |
| Plot data                          |      1 |
| Fit bivariate regression           |      1 |
| Publish to GitHub Pages            |      6 |
| Successfully submit pull request   |    0.5 |
| **Total**                          |     10 |


### Tips

- Review the RStudio Projects tutorial to refresh your memory.
- Review the recommended readings for tips on tidying your data.
- Only submit a pull request to ```datasci_assignments``` once everything is 
working properly in your repo.
- Always include a README in your repos.
- Make sure you **look** at the output after kniting. Is it clean? Make it 
look good (i.e., don't type everything in bold!).
- **Use slack to ask questions**

---

