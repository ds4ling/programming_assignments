

<!-- 
Beginning of semester prep: 
&#10;- hide all PAs by setting eval=F below
- Remove misc directory from commit history and add back (in .gitignore) 
  when appropriate
-->

# programming_assignments

## Programming assignments for Data Science for Linguistics.

- [pa1](#assignment-1)
- [pa2](#assignment-2)
- [pa3](#assignment-3)
- [pa4](#assignment-4)
- [pa5](#assignment-5)

------------------------------------------------------------------------

## Assignment 1

**Topic**: GitHub

### Overview

In this assignment you will practice the basics of working with project
repos using GitHub and the GitHub desktop app. Specifically, you will
fork this repo, clone it to your computer, contribute to it, push
changes from your local repo (your computer) to your upstream branch
(your forked copy on GitHub), and, finally, submit a pull request to
merge your contribution with the master repo (i.e., the professor’s
copy).

**Assigned**: Week 1  
**Due**: Monday, 02/03 before 10pm

### Instructions

1.  If you have not already done so, fork this repo and clone it to your
    computer.
2.  In your local copy create a personal ‘dropbox’
    1.  create an empty folder named “lastname_firstname” (ex.
        casillas_joseph). Put it inside `misc > students`.
    2.  create another **README.md** file and place it inside your
        personal folder. Include the following info:
        - Your name
        - Your email
        - Your personal website if you have one
        - A goal you have for this class
3.  Create another folder. Name it `summaries` and place it inside your
    personal dropbox folder. Next, read [Wickham,
    2015](https://nhorton.people.amherst.edu/mererenovation/17_Wickham.PDF).
    Create a file called **wickham_2015_summary.md** and write a 4
    sentence summary about the article. Save this file in `summaries`
    inside your personal dropbox (the lastname_firstname folder you just
    made).
4.  Read [R4DS](http://r4ds.had.co.nz/index.html) Preface - Ch. 2
    (p. ix-41). Do all examples included in the text as you read
    (nothing to turn in).
5.  Read QML Ch. 1 (pp. 1-33). Do the R examples included in the text as
    you read (nothing to turn in).
6.  Commit the changes to your upstream branch, i.e., your copy of the
    repo on github.com. Check your repo on GitHub to make sure it
    worked, and then submit a pull-request. It should include the
    following…
    1.  your dropbox folder (lastname_firstname)
    2.  a README.md file
    3.  a summaries folder (inside your dropbox)
    4.  your Wickham (2015) summary (wickham_2015_summary.md)

### Evaluation

This is programming assignment 1 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete steps 1-6
above and follow all the instructions.

| Task                                | Points |
|:------------------------------------|-------:|
| Create a dropbox folder             |      1 |
| Include a README.md                 |      1 |
| Create a summaries folder           |      1 |
| Include a summary of Wickham (2015) |      2 |
| Successfully submit a pull request  |      5 |
| **Total**                           |     10 |

### Tips

This is how the file structure currently looks:

    programming_assignments
           │
           ├── README.md
           └── misc
               └── students
                   ├── README.md
                   └── lastname_firstname
                       ├── README.md
                       └── summaries
                           └── wickham_2015_summary.md

Take a look inside the `firstname_firstname` folder if you need an
example (this is highly recommended). Your personal dropbox should look
exactly the same, but with your information, summaries, etc. In other
words, you will add a folder inside `students` that looks like this (I
am using my name, you will use your name):

    casillas_joseph
            │
            ├── README.md
            └── summaries
                └── wickham_2015_summary.md

Remember to check the [GitHub setup
tutorial](https://www.ds4ling.jvcasillas.com/misc/tutorials/github_setup/)
if you need help pushing your changes and submitting a pull request.

------------------------------------------------------------------------

## Assignment 2

**Topics**: RMarkdown, ggplot

### Overview

In this assignment you will practice the basics of using .Rmd files to
create dynamic, reproducible reports in .docx, .pdf, or .html format.
Moreover, you will show your data visualization skills using `ggplot2`.

**Assigned**: Week 3  
**Due**: Monday, 2/17 before 10pm

### Instructions

1.  Fetch the latest updates in `programming_assignments` to your forked
    branch and pull the changes to your local copy (i.e., the copy on
    your computer). Review the [GitHub setup
    tutorial](https://www.ds4ling.jvcasillas.com/misc/tutorials/github_setup/)
    if you need a refresher.
2.  Create a folder, `pa2`, inside your personal
    dropbox.<sup>[1](#myfootnote1)</sup>
3.  In RStudio create an RMarkdown file called `README.Rmd` and put it
    inside the `pa2` folder.
4.  Use the following information for the **yaml front matter**:

``` r
title: "Programming assignment 2"  
author: "Your name"  
date: "Last update: `r Sys.time()`"  
output:  
  html_document:  
    highlight: kate  
    keep_md: yes  
    theme: united
```

5.  Install and load the `languageR` package from CRAN.
6.  Familiarize yourself with three of the following five datasets:
    - **beginningReaders**
    - **danish**
    - **dativeSimplified**
    - **english**
    - **spanishFunctionWords**
7.  Inside your `README.Rmd` file you will generate 3 different plots
    using `ggplot2`. You must use 3 of the aforementioned datasets (a
    different dataset for each plot). All plots must include informative
    x-, y-axis labels and a title. The plots you must create are:
    1.  A bivariate scatterplot
    2.  A boxplot with different fill colors
    3.  A plot of your choice that includes a `stat_summary` and a
        facet.
8.  Commit the changes in your dropbox to your upstream branch, i.e.,
    your forked copy on github. Check your repo on GitHub.com to make
    sure it worked (notice anything cool when you check the `pa2`
    folder?), and then submit a pull-request to the
    `ds4ling/programming_assignments` main repo. It should include the
    following…
9.  your `pa2` folder
10. your `README.Rmd` RMarkdown file (and probably a few others)
11. 3 plots created using `ggplot`

### Evaluation

This is programming assignment 2 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete all the steps
above and follow all the instructions.

| Task                               | Points |
|:-----------------------------------|-------:|
| Create a pa2 folder                |    0.5 |
| Create a README.Rmd file           |    0.5 |
| Use correct yaml front matter      |      1 |
| Generate 3 specified plots         |      6 |
| Successfully submit a pull request |      2 |
| **Total**                          |     10 |

### Tips

Review Ch. 1 of R4DS for help with `ggplot`. **DO NOT** copy the plots
directly from the book or the internet (I’ll know). Review the [GitHub
setup
tutorial](https://www.ds4ling.jvcasillas.com/misc/tutorials/github_setup/),
especially if you are struggling with git-specific terminology. Pay
special attention to file names, letter case, etc. in order to get the
appropriate results.

This is more or less how your dropbox should look (**Note**: your pa2
folder will have a little more detail than what I have described here.
That is fine):

    casillas_joseph
            │
            ├── README.md
            ├── summaries
            │    └── r4ds_ch1_summary.md
            └── pa2
                 └── README.Rmd

<a name="myfootnote1">1</a>: Note: you might have noticed that your
current copy of `programming_assignments` now includes the dropbox
folders of your classmates. This is on purpose. You are encouraged to
review your classmates assignments. You can learn from them and you will
notice that it is possible to solve data science problems using a
variety of different methods. That being said, you should only review
the work of your classmates **after** the assignment has been turned in.

------------------------------------------------------------------------

## Assignment 3

**Topics**: Project management, Tidying data, GitHub Pages

### Overview

In this assignment you will create your own RStudio project in which you
get, tidy, transform and plot data from a publicly available dataset.
You will host your project in a GitHub repo and create a project
website.

**Assigned**: Week 5, 02/24  
**Due**: Monday, 03/03 before 10pm

### Instructions

Choose any data set you want from the `languageR`,
[untidydata](https://www.jvcasillas.com/untidydata/), or
[worldlanguages](https://www.jvcasillas.com/worldlanguages/) packages
(it can be the same one you used last week, but if you prefer something
different get permission first). To see all the options, run the
following code in RStudio:

    data(package = "languageR") 
    data(package = "untidydata")
    data(package = "worldlangauges")

or check the documentation on the package website (note: you may need to
install the package first).

#### Setup

1.  Create a new repo from GitHub.com called `pa3` and clone it to your
    desktop.
2.  Create a new project for your repo using RStudio.
3.  Inside your new project, create an RMarkdown document called
    `index.Rmd` (the default output format should be html).

#### EDA

4.  Load the data set of your choice and get information about its
    structure (remember all code needs to be inside a knitr code chunk).
5.  Tidy the data set (every variable gets a column, every observation
    occupies a single row), if necessary.
6.  Calculate descriptive statistics of your choice.
7.  Select two continuous variables and fit a model to the data
    (bivariate regression).
8.  Generate a plot that includes a regression line.
9.  Write up some general *observations* (1-2 paragraphs max)

#### Share

10. Commit your changes and push them to GitHub.
11. Publish your repo using GitHub Pages.
12. Update your fork of the `programming_assignments` repo. Next, create
    a new folder inside **your** dropbox in `programming_assignments`
    called `pa3`. Include a README.md file with a link to your published
    pa3 website. Submit a pull request to the master
    `programming_assignments` repo.

### Evaluation

This is programming assignment 3 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete all steps in
**Setup**, **EDA**, and **Share** detailed above, and follow **all** the
instructions. Moreover, steps 1-5 in *EDA* **must** be completed in
separate code chunks, you must comment every step in your code, and you
**MUST** knit your project before submitting.

| Task                             | Points |
|:---------------------------------|-------:|
| Tidy data                        |      2 |
| Descriptive stats                |    0.5 |
| Plot data                        |      1 |
| Fit bivariate regression         |      1 |
| Publish to GitHub Pages          |      5 |
| Successfully submit pull request |    0.5 |
| **Total**                        |     10 |

### Tips

- Review the RStudio Projects tutorial to refresh your memory.
- Review the recommended readings for tips on tidying your data.
- Only submit a pull request to `programming_assignments` once
  everything is working properly in your repo.
- Always include a README in your repos.
- Make sure you **look** at the output after knitting. Is it clean? Make
  it look good (i.e., don’t type everything in bold!).
- **Use slack to ask questions**

------------------------------------------------------------------------

## Assignment 4

**Topics**: Project management, tidying data, HTML Presentations

### Overview

In this assignment you will create an RStudio project in which you get,
tidy, transform, analyze and plot data from a publicly available
dataset. You will host your project in a GitHub repo and create HTML
slides to present your analysis.

**Assigned**: 03/24  
**Due**: Monday, 03/31 before 10pm

### Instructions

1.  Create a new project in RStudio called `pa4`. Inside your new
    project, create three folders: `data_raw`, `data_tidy`, and
    `slides`.
2.  Download the dataset available
    [here](https://github.com/ds4ling/programming_assignments/raw/master/misc/data/pa_4_data/fricatives.zip)
    and store it in `data_raw`.
3.  Generate an HTML presentation using **xaringan**. Save the RMarkdown
    file as `index.Rmd` inside of the folder `slides`.
4.  Load the dataset from inside your `index.Rmd` file.
5.  Tidy the data and save the tidy version as a .csv file in
    `data_tidy`.
6.  Provide a table of descriptive statistics.
7.  Make a boxplot of center of gravity as a function of phoneme. In
    another slide, plot skewness as a function of phoneme. Use a
    statistical transformation (i.e., not a boxplot, but rather
    `stat_summary()`).
8.  Fit a model that examines center of gravity as a function of
    skewness for the \[s\] segments (hint: you will have to transform
    the data). Make a table of the model summary.
9.  Make a scatter plot that illustrates the relationship in (8).
10. Check model diagnostics (make plots).
11. Write up the results (as if it were for a journal article).
12. In a new slide, load the `assumptions.csv` dataset. Make a
    scatterplot. Explain in a few sentences why it would not be
    appropriate to fit a model to this data.
13. Host your project in a GitHub repo called `pa4`.
14. Turn the slides into a website using GitHub pages.
15. Inside your dropbox in `programming_assignments`, create a folder
    called `pa4` that includes a `README.md` file with a link to your
    slides.
16. Push changes to your forked version of `programming_assignments` and
    submit a pull request to the master `programming_assignments` repo
    in ds4ling.

### Evaluation

This is programming assignment 4 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete steps 1-16
above and follow **all** the instructions.

| Task                                   | Points |
|:---------------------------------------|-------:|
| Tidy data                              |      2 |
| Descriptive stats                      |    0.5 |
| Plot data                              |      1 |
| Fit a model                            |      1 |
| Assess and interpret model             |      2 |
| Publish HTML slides using GitHub Pages |      2 |
| Complete question 12                   |      1 |
| Successfully submit pull request       |    0.5 |
| **Total**                              |     10 |

### Tips

- Follow every instruction step-by-step.
- Worry about tidying your data, fitting your models, making plots,
  etc., **before** you worry about making the presentation (i.e., making
  each individual slide). It might be a good idea to use an R script
  first, as we have done in class, and then turn it into a presentation.
- Search for help when you get stuck, use stackoverflow and slack.
- Think of this PA as a practice exam. Use all of the skills you have
  developed up to this point in the class.
- Review fetching changes in GitHub (to update your
  **programming_assignments** repo) and submitting pull-requests (to
  ‘turn in’ your assignment).

------------------------------------------------------------------------

## Assignment 5

**Topics**: Project management, tidying data, fitting linear models,
testing hypotheses, reporting results.

### Overview

In this assignment you will create an RStudio project in which you load,
tidy, transform, plot, analyze and report data. You will host your
project on GitHub in a personal repo and create a report to present your
analysis.

**Assigned**: 04/24  
**Due**: 04/28 by 12:00 pm

### Background

You will receive a `ratings` data set. You already know about the data,
but I will briefly describe it anyway. The data set consists of
`enjoyment` and `difficulty` ratings provided by current and former
students in the ds4ling class. Each week at the beginning of class the
students provided an assessment of their perceived difficulty of the
material and their overall enjoyment of the class from the previous
week. There are a total of 11 weeks of data from 2 sections of the class
(2023, 2025). The students used a sliding rating scale that ranged from
0 to 1 (0 = no enjoyment, no difficulty; 1 = max enjoyment, max
difficulty).

Your task is to explore **two** of the following three research
questions:

- Q<sub>1</sub>: Is there a difference in overall enjoyment between the
  2023 class and the 2025 class?
- Q<sub>2</sub>: How do difficulty ratings change over time (i.e.,
  within a semester)?
- Q<sub>3</sub>: What is the nature of the relationship between
  perceived difficulty and enjoyment?

The data set poses several non-trivial challenges. It is incomplete in
several ways. Not every student provided ratings for each week. Some
students did not use unique identifiers, thus it is not always possible
to determine *who* a given observation comes from. You will need to take
these issues into account when answering the aforementioned research
questions. You must explain and justify all decisions you make.

You can complete this project independently or with one other person
from class. If you work with somebody, you complete one project (one
repo) and share the final grade.

### General instructions

1.  Get the latest version of `programming_assignments`, i.e., fetch the
    newest changes to update your local repo.
2.  Create a new project in RStudio called `pa5`. Inside your new
    project, create two folders: `data_raw` and `data_clean`.
3.  Download the data set available \[here\]\[COMING SOON\] and store it
    in `data_raw`.
4.  Create a new RMarkdown file called `index.Rmd` (‘index’ is *not*
    capitalized) and save it at the root level of your project (i.e.,
    inside `pa5`). The output of the Rmd file can be word, pdf or html.
    You can use the `papaja` package to generate an APA formatted
    manuscript if you’d like. You can use `xaringan` to create html
    slides. You decide, but only pick one. Be sure to give an
    informative title and to include your name(s).
5.  Load the dataset from inside your `index.Rmd` file. Pay special
    attention to the path. Don’t forget where the .csv file lives.
6.  You will need to tidy the data set as necessary to run your models
    and plot your data. Keep in mind the principles of tidy data. You
    may need to format the data in different ways depending on what you
    are trying to achieve. Remember to use sections (#), subsections
    (##), text, comments, etc. to explain in prose every step.

### Q<sub>1</sub>: Enjoyment as a function of class (10 points)

Recall that this research questions aims to assess whether there is a
difference in enjoyment ratings between the 2023 class and the 2025
class. If you choose this question, you must do the following:

1.  Tidy the data set as necessary and provide a table of relevant
    descriptive statistics. You decide what is relevant based on the
    variables you have and the research question. Include an explanation
    in prose of any observations you make from the table. Be sure to
    print the table in a way that will show up in your knitted document
    (see previous examples from class).
2.  Create an informative plot of the data. You only get one plot, so
    make it count. Keep in mind the types of variables that you have,
    particularly those that are relevant to this specific question.
    Interpret the plot (in prose).
3.  Decide on a model you can use to answer the research question to the
    best of your abilities.
4.  Print a summary of the model and test that the model assumptions
    have been met (you can use plots for this, but you are not required
    to include them in the final version of your assignment).
5.  Write up the results. You should include (1) a description of the
    statistical analyses you have done in one paragraph, and (2) the
    actual interpretation of the results in another (see class slides
    for examples). Don’t forget to include an overall assessment of
    goodness of fit (variance explained).
6.  **Important**: In a separate paragraph discuss model assumptions.
    Did you violate any important assumptions? What decisions did you
    have to make in order to arrive at an answer? What are the
    advantages and disadvantages of the decisions you made?

### Q<sub>2</sub>: Difficulty as a function of time (10 points)

This question aims to better understand if/how perceived difficulty
ratings change over the course of the semester. If you choose this
question, you must do the following:

0.  Establish an a priori hypothesis about how difficulty ratings will
    change over time.
1.  Tidy the data set as necessary and provide a table of relevant
    descriptive statistics. You decide what is relevant based on the
    variables you have and the research question. Include an explanation
    in prose of any observations you make from the table. Be sure to
    print the table in a way that will show up in your knitted document
    (see previous examples from class).
2.  Create an informative plot of the data. You only get one plot, so
    make it count. Keep in mind the types of variables that you have,
    particularly those that are relevant to your specific hypothesis.
    Interpret the plot (in prose).
3.  Decide on a model you can use to answer the research question to the
    best of your abilities. You should use a nested model and an
    inclusive model to test for the main effect of time. You will need
    to report the main effect using a nested model comparison and then
    parameter estimates from the final model.
4.  Print a summary of the model and test that the model assumptions
    have been met (you can use plots for this, but you are not required
    to include them in the final version of your assignment).
5.  Write up the results. You should include (1) a description of the
    statistical analyses you have done in one paragraph, and (2) the
    actual interpretation of the results in another (see class slides
    for examples). Don’t forget to include an overall assessment of
    goodness of fit (variance explained).
6.  **Important**: In a separate paragraph discuss model assumptions.
    Did you violate any important assumptions? What decisions did you
    have to make in order to arrive at an answer? What are the
    advantages and disadvantages of the decisions you made?

### Q<sub>3</sub>: The relationship between enjoyment and difficulty (10 points)

In Q<sub>3</sub> you will assess the relationship between enjoyment and
difficult ratings. If you choose this question, you must do the
following:

0.  Establish an a priori hypothesis about the relationship between
    difficulty and enjoyment.
1.  Tidy the data set as necessary and provide a table of relevant
    descriptive statistics. You decide what is relevant based on the
    variables you have and the research question. Include an explanation
    in prose of any observations you make from the table. Be sure to
    print the table in a way that will show up in your knitted document
    (see previous examples from class).
2.  Create an informative plot of the data. You only get one plot, so
    make it count. Keep in mind the types of variables that you have,
    particularly those that are relevant to your specific hypothesis.
    Interpret the plot (in prose).
3.  Decide on a model you can use to answer the research question to the
    best of your abilities.
4.  Print a summary of the model and test that the model assumptions
    have been met (you can use plots for this, but you are not required
    to include them in the final version of your assignment).
5.  Write up the results. You should include (1) a description of the
    statistical analyses you have done in one paragraph, and (2) the
    actual interpretation of the results in another (see class slides
    for examples). Don’t forget to include an overall assessment of
    goodness of fit (variance explained).
6.  **Important**: In a separate paragraph discuss model assumptions.
    Did you violate any important assumptions? What decisions did you
    have to make in order to arrive at an answer? What are the
    advantages and disadvantages of the decisions you made?

### Final instructions

- Once you have completed two of the three research questions, make sure
  your document will knit successfully. Read that last sentence again.
- Host your project in a **private** GitHub repo (call it `pa5`), and
  share it with me (jvcasillas). You can share a private repo from the
  settings tab on github.com (essentially you add me as a contributor).
  You do not need to make it a website.
- Create a new folder in your `programming_assignments` dropbox folder.
  Include a `README.md` file with a link to your repo (just the repo,
  not a website).
- Celebrate. You survived. So far.

### Evaluation

This is programming assignment 5. There are a total of 25 possible
points. In order to receive full credit you must complete all of the
steps described above following **all** instructions.

| Task                                          | Points |
|:----------------------------------------------|-------:|
| Create `pa5` project with correct structure   |      1 |
| Create `index.Rmd` with title and author info |      1 |
| Complete 1 of 3 the RQs                       |     10 |
| Complete 2 of 3 the RQs                       |     10 |
| Create private repo                           |      1 |
| Successfully submit pull request              |      2 |
| **Total**                                     |     25 |

The breakdown for the 10 points of the research questions is as follows:

| Task                                                         | Points |
|:-------------------------------------------------------------|-------:|
| Tidy the data as necessary                                   |    1.0 |
| Create table of relevant descriptive stats                   |    1.0 |
| Generate an informative plot data and accurately describe it |    1.0 |
| Fit model(s)                                                 |    2.0 |
| Write up results for publication                             |    2.0 |
| Discuss model assumptions                                    |    3.0 |

Bonus points: You can earn up to two bonus points if you do something
meaningful with the qualitative data (i.e., the `comments` column).

### Hints

- Make use of markdown syntax. Include appropriate sections,
  subsections, etc.
- Comment all of your code. If you run into problems, explain what you
  are trying to do. If you find help on the internet, chatGPT, or in
  slides from class, include a link in your comments.
- You get lifelines. Talk to me if you get stuck.
