# programming\_assignments

## Programming assignments for Data Science for Linguistics.

-   [pa1](#assignment-1)
-   [pa2](#assignment-2)
-   [pa3](#assignment-3)

------------------------------------------------------------------------

## Assignment 1

**Topic**: GitHub

### Overview

In this assignment you will practice the basics of working with project
repos using GitHub and the GitHub desktop app. Specifically, you will
fork this repo, clone it to your computer, contribute to it, push
changes from your local repo (your computer) to your upstream branch
(your forked copy on GitHub), and, finally, submit a pull request to
merge your contribution with the master repo (the professor’s copy).

**Assigned**: Week 1  
**Due**: Monday, 01/30 before 10pm

### Instructions

1.  If you have not already done so, fork this repo and clone it to your
    computer.
2.  In your local copy create a personal ‘dropbox’
    1.  create an empty folder named “lastname\_firstname” (ex.
        casillas\_joseph). Put it inside `misc > students`.
    2.  create another **README.md** file and place it inside your
        personal folder. Include the following info:
        -   Your name
        -   Your email
        -   Your personal website if you have one
        -   A goal you have for this class
3.  Create another folder. Name it `summaries` and place it inside your
    personal dropbox folder. Next, read [Wickham,
    2015](https://nhorton.people.amherst.edu/mererenovation/17_Wickham.PDF).
    Create a file called **wickham\_2015\_summary.md** and write a 4
    sentence summary about the article. Save this file in `summaries`
    inside your personal dropbox (the lastname\_firstname folder you
    just made).
4.  Read [R4DS](http://r4ds.had.co.nz/index.html) Preface - Ch. 2
    (p. ix-41). Do all examples included in the text as you read
    (nothing to turn in).
5.  Read QML Ch. 1 (pp. 1-33). Do the R examples included in the text as
    you read (nothing to turn in).
6.  Commit the changes to your upstream branch, i.e., your copy of the
    repo on github.com. Check your repo on GitHub to make sure it
    worked, and then submit a pull-request. It should include the
    following…
    1.  your dropbox folder (lastname\_firstname)
    2.  a README.md file
    3.  a summaries folder (inside your dropbox)
    4.  your Wickham (2015) summary (wickham\_2015\_summary.md)

### Evaluation

This is programming assignment 1 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete steps 1-6
above and follow all the instructions.

<table>
<thead>
<tr class="header">
<th style="text-align: left;">Task</th>
<th style="text-align: right;">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Create a dropbox folder</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Include a README.md</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Create a summaries folder</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Include a summary of Wickham (2015)</td>
<td style="text-align: right;">2</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Successfully submit a pull request</td>
<td style="text-align: right;">5</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>Total</strong></td>
<td style="text-align: right;">10</td>
</tr>
</tbody>
</table>

### Tips

This is how the file structure currently looks:

    programming_assignments
           │
           ├── README.md
           └── misc
               └── students
                   ├── README.md
                   └── firstname_lastname
                       ├── README.md
                       └── summaries
                           └── wickham_2015_summary.md

Take a look inside the `lastname_firstname` folder if you need an
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
**Due**: Monday, 2/13 before 10pm

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

<!-- -->

    title: "Programming assignment 2"  
    author: "Your name"  
    date: "Last update: `r Sys.time()`"  
    output:  
      html_document:  
        highlight: kate  
        keep_md: yes  
        theme: united

1.  Install and load the `languageR` package from CRAN.
2.  Familiarize yourself with three of the following five datasets:
    -   **beginningReaders**
    -   **danish**
    -   **dativeSimplified**
    -   **english**
    -   **spanishFunctionWords**
3.  Inside your `README.Rmd` file you will generate 3 different plots
    using `ggplot2`. You must use 3 of the aforementioned datasets (a
    different dataset for each plot). All plots must include informative
    x-, y-axis labels and a title. The plots you must create are:
    1.  A bivariate scatterplot
    2.  A boxplot with different fill colors
    3.  A plot of your choice that includes a `stat_summary` and a
        facet.
4.  Commit the changes in your dropbox to your upstream branch, i.e.,
    your forked copy on github. Check your repo on GitHub.com to make
    sure it worked (notice anything cool when you check the `pa2`
    folder?), and then submit a pull-request to the
    `ds4ling/programming_assignments` master repo. It should include the
    following…
5.  your `pa2` folder
6.  your `README.Rmd` RMarkdown file (and probably a few others)
7.  3 plots created using `ggplot`

### Evaluation

This is programming assignment 2 of 5. It is worth 10 of the 50 possible
points. In order to receive full credit you must complete all the steps
above and follow all the instructions.

<table>
<thead>
<tr class="header">
<th style="text-align: left;">Task</th>
<th style="text-align: right;">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Create a pa2 folder</td>
<td style="text-align: right;">0.5</td>
</tr>
<tr class="even">
<td style="text-align: left;">Create a README.Rmd file</td>
<td style="text-align: right;">0.5</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Use correct yaml front matter</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Generate 3 specified plots</td>
<td style="text-align: right;">6</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Successfully submit a pull request</td>
<td style="text-align: right;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>Total</strong></td>
<td style="text-align: right;">10</td>
</tr>
</tbody>
</table>

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

**Assigned**: Week 5, 02/20  
**Due**: Monday, 02/27 before 10pm

### Instructions

Choose any data set you want from the `languageR` package (it can be the
same one you used last week). To see all the options, run the following
code in RStudio:

    data(package = "languageR")

#### Setup

1.  Create a new repo from GitHub.com called `pa3` and clone it to your
    desktop.
2.  Create a new project for your repo using RStudio.
3.  Inside your new project, create an RMarkdown document called
    `index.Rmd` (the default output format should be html).

#### EDA

1.  Load the data set of your choice and get information about its
    structure (remember all code needs to be inside a knitr code chunk).
2.  Tidy the data set (every variable gets a column, every observation
    occupies a single row), if necessary.
3.  Calculate descriptive statistics of your choice.
4.  Select two continuous variables and fit a model to the data
    (bivariate regression).
5.  Generate a plot that includes a regression line.
6.  Write up some general observations (1-2 paragraphs max)

#### Share

1.  Commit your changes and push them to GitHub.
2.  Publish your repo using GitHub Pages.
3.  Update your fork of the `programming_assignments` repo. Next, create
    a new folder inside **your** dropbox in `programming_assignments`
    called `pa3`. Include a README.md file with a link to your published
    pa3 website. Submit a pull request to the master
    `programming_assignments` repo.

### Evaluation

This is programming assignment 3 of 5. It is worth 10 of the 50 possible
points. In order to receive full credit you must complete all steps in
**Setup**, **EDA**, and **Share** detailed above, and follow **all** the
instructions. Moreover, steps 1-5 in *EDA* **must** be completed in
separate code chunks, and you must comment every step in your code.

<table>
<thead>
<tr class="header">
<th style="text-align: left;">Task</th>
<th style="text-align: right;">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Tidy data</td>
<td style="text-align: right;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Descriptive stats</td>
<td style="text-align: right;">0.5</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Plot data</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Fit bivariate regression</td>
<td style="text-align: right;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Publish to GitHub Pages</td>
<td style="text-align: right;">5</td>
</tr>
<tr class="even">
<td style="text-align: left;">Successfully submit pull request</td>
<td style="text-align: right;">0.5</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>Total</strong></td>
<td style="text-align: right;">10</td>
</tr>
</tbody>
</table>

### Tips

-   Review the RStudio Projects tutorial to refresh your memory.
-   Review the recommended readings for tips on tidying your data.
-   Only submit a pull request to `programming_assignments` once
    everything is working properly in your repo.
-   Always include a README in your repos.
-   Make sure you **look** at the output after knitting. Is it clean?
    Make it look good (i.e., don’t type everything in bold!).
-   **Use slack to ask questions**

------------------------------------------------------------------------

<!--
[pa4_fricatives]: https://github.com/ds4ling/programming_assignments/raw/master/misc/data/pa_4_data/fricatives.zip
[pa5_learning]: https://github.com/ds4ling/programming_assignments/raw/master/misc/data/pa_5_data/pa_5_data.zip
-->
