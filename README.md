datasci\_assignments
====================

Final projects
--------------

-   [Ana: Training effects on vowel duration in L2
    English](https://github.com/anarinzler/final_project)
-   [Eileen: Stress in Munster
    Irish](https://github.com/eileenblum/mim3)
-   [Jessyca: Cue weighting in L2 stress
    perception](https://github.com/jesscampos9/research_project)
-   [Dine: Acoustics of
    Shouting](https://github.com/dinemamadou/Final_project)
-   [Michele: Acquisition of null
    subjects](https://github.com/michelegoldin/research_project)
-   [Esther: Verb Frequency and DOM in Heritage Speakers of
    Spanish](https://github.com/estherhur/Final-paper)
-   [Nate: Drunk driving in Korea](https://github.com/nate-koser/Final)
-   [Julio: The use of DOM in Spanish among Romanian-speaking L2
    learners](https://github.com/julioclo/finalproject)
-   [Chris: Acoustic Correlates of Stress in
    Lithuanian](https://github.com/coakden/Final-Project)
-   [Francisco: Disproving the Functional Load Hypothesis with Stronger
    Data Analysis](https://github.com/BatFran/Research-Project)

Programming assignments for Data Science for Linguistics.
---------------------------------------------------------

-   [pa1](#assignment-1)
-   [pa2](#assignment-2)
-   [pa3](#assignment-3)
-   [pa4](#assignment-4)
-   [pa5](#assignment-5)

------------------------------------------------------------------------

Assignment 1
------------

**Topic**: GitHub

### Overview

In this assignment you will practice the basics of working with project
repos using GitHub and the GitHub desktop app. Specifically, you will
fork this repo, clone it to your computer, contribute to it, push
changes from your local repo (your computer) to your upstream branch
(your forked copy on GitHub), and, finally, submit a pull request to
merge your contribution with the master repo (the professor's copy).

**Assigned**: Week 1  
**Due**: Monday, 1/22 before 10pm

### Instructions

1.  If you have not already done so, fork this repo and clone it to your
    computer.
2.  In your local copy create a personal 'dropbox'
    1.  create an empty folder named "lastname\_firstname" (ex.
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
4.  Read [R4DS](http://r4ds.had.co.nz/index.html) Preface - Ch. 2 (p.
    ix-41). Do all examples included in the text as you read (nothing to
    turn in).
5.  Read QML Ch. 1 (pp. 1-33). Do the R examples included in the text as
    you read (nothing to turn in).
6.  Commit the changes to your upstream branch. Check your repo on
    GitHub to make sure it worked, and then submit a pull-request. It
    should include the following...
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
<th align="left">Task</th>
<th align="right">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Create a dropbox folder</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Include a README.md</td>
<td align="right">1</td>
</tr>
<tr class="odd">
<td align="left">Create a summaries folder</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Include a summary of Wickham (2015)</td>
<td align="right">2</td>
</tr>
<tr class="odd">
<td align="left">Successfully submit a pull request</td>
<td align="right">5</td>
</tr>
<tr class="even">
<td align="left"><strong>Total</strong></td>
<td align="right">10</td>
</tr>
</tbody>
</table>

### Tips

This is how the file structure currently looks:

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
tutorial](http://www.jvcasillas.com/ru_teaching/ru_spanish_589/589_01_s2018/sources/tuts/github_setup/index.html)
if you need help pushing your changes and submitting a pull request.

------------------------------------------------------------------------

Assignment 2
------------

**Topics**: RMarkdown, ggplot

### Overview

In this assignment you will practice the basics of using .Rmd files to
create dynamic, reproducible reports in .docx, .pdf, or .html format.
Moreover, you will show your data visualization skills using `ggplot2`.

**Assigned**: Week 3  
**Due**: Tuesday, 2/6 before 10pm

### Instructions

1.  Fetch the latest updates to `datasci_assignments` to your local
    branch. Review the [GitHub setup
    tutorial](http://www.jvcasillas.com/ru_teaching/ru_spanish_589/589_01_s2018/sources/tuts/github_setup/index.html)
    if you need a refresher.
2.  Create a folder, `pa2`, inside your personal
    dropbox.<sup>[1](#myfootnote1)</sup>
3.  Create an RMarkdown file called `pa2.Rmd`.
4.  Use the following information for the **yaml front matter**:

    title: "Programming assignment 2"  
    author: "Your name"  
    date: "Last update: 2018-05-09 12:27:17"  
    output:  
     html\_document:  
     highlight: kate  
     keep\_md: yes  
     theme: united

5.  Install and load the `languageR` package.
6.  Familiarize yourself with three of the following five datasets:
    -   **beginningReaders**
    -   **danish**
    -   **dativeSimplified**
    -   **english**
    -   **spanishFunctionWords**

7.  Inside your `pa2.Rmd` file you will generate 3 different plots using
    `ggplot2`. You must use 3 of the aforementioned datasets (a
    different dataset for each plot). All plots must include informative
    x-, y-axis labels and a title. The plots you must create are:
    1.  A bivariate scatterplot
    2.  A boxplot with different fill colors
    3.  A plot of your choice that includes a `stat_summary` and a
        facet.  

8.  Commit the changes in your dropbox to your upstream branch. Check
    your repo on GitHub to make sure it worked (notice anything cool
    when you check the `pa2` folder?), and then submit a pull-request.
    It should include the following...
    1.  your `pa2` folder
    2.  your `pa2.Rmd` RMarkdown file (and probably a few others)
    3.  3 plots created using `ggplot`

### Evaluation

This is programming assignment 2 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete all the steps
above and follow all the instructions.

<table>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="right">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Create a pa2 folder</td>
<td align="right">0.5</td>
</tr>
<tr class="even">
<td align="left">Create a pa2.Rmd file</td>
<td align="right">0.5</td>
</tr>
<tr class="odd">
<td align="left">Use correct yaml front matter</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Generate 3 specified plots</td>
<td align="right">6</td>
</tr>
<tr class="odd">
<td align="left">Successfully submit a pull request</td>
<td align="right">2</td>
</tr>
<tr class="even">
<td align="left"><strong>Total</strong></td>
<td align="right">10</td>
</tr>
</tbody>
</table>

### Tips

Review Ch. 1 of R4DS for help with `ggplot`. **DO NOT** copy the plots
directly from the book or the internet (I'll know).

This is more or less how your dropbox should look (**Note**: your pa2
folder will have a little more detail than what I have described here.
That is fine):

    casillas_joseph
            │
            ├── README.md
            ├── summaries
            │    └── r4ds_ch1_summary.md
            └── pa2
                 └── pa2.Rmd

<a name="myfootnote1">1</a>: Note: you might have noticed that your
current copy of `datasci_assignments` now includes the dropbox folders
of your classmates. This is on purpose. You are encouraged to review
your classmates assignments. You can learn from them and you will notice
that it is possible to solve data science problems using a variety of
different methods. That being said, you should only review the work of
your classmates **after** the assignment has been turned in.

------------------------------------------------------------------------

Assignment 3
------------

**Topics**: Project management, Tidying data, GitHub Pages

### Overview

In this assignment you will create your own RStudio project in which you
get, tidy, transform and plot data from publicly available dataset. You
will host your project in a GitHub repo and create a project website.

**Assigned**: Week 5, 02/13  
**Due**: Tuesday, 02/20 before 10pm

### Instructions

Choose any dataset you want from the `languageR` package (it can be the
same one you used last week). To see all the options, run the following
code in RStudio:

    data(package = "languageR")

#### Setup

1.  Create a new project in RStudio called `pa3`.
2.  Host your project in a GitHub repo called `pa3`.
3.  Inside your new project, create an RMarkdown document called
    `index.Rmd`

#### EDA

1.  Load the dataset of your choice and get information about its
    structure
2.  Tidy the dataset (every variable gets a column, every observation
    occupies a single row), if necessary.
3.  Calculate descriptive statistics of your choice.
4.  Select two continuous variables and fit a model to the data
    (bivariate regression).
5.  Generate a plot that includes a regression line.
6.  Write up some general observations (1-2 paragraphs max)

#### Share

1.  Commit your changes and push them to GitHub
2.  Publish your repo using GitHub Pages
3.  Create a new folder inside your dropbox in `datasci_assignments`
    called `pa3`. Include a README.md file with a link to your published
    pa3 website. Submit a pull request to the master
    `datasci_assignments` repo.

### Evaluation

This is programming assignment 3 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete all steps in
**Setup**, **EDA**, and **Share** detailed above, and follow **all** the
instructions. Moreover, steps 1-5 in *EDA* **must** be completed in
separate code chunks, and you must comment every step in your code.

<table>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="right">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Tidy data</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Descriptive stats</td>
<td align="right">0.5</td>
</tr>
<tr class="odd">
<td align="left">Plot data</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Fit bivariate regression</td>
<td align="right">1</td>
</tr>
<tr class="odd">
<td align="left">Publish to GitHub Pages</td>
<td align="right">6</td>
</tr>
<tr class="even">
<td align="left">Successfully submit pull request</td>
<td align="right">0.5</td>
</tr>
<tr class="odd">
<td align="left"><strong>Total</strong></td>
<td align="right">10</td>
</tr>
</tbody>
</table>

### Tips

-   Review the RStudio Projects tutorial to refresh your memory.
-   Review the recommended readings for tips on tidying your data.
-   Only submit a pull request to `datasci_assignments` once everything
    is working properly in your repo.
-   Always include a README in your repos.
-   Make sure you **look** at the output after kniting. Is it clean?
    Make it look good (i.e., don't type everything in bold!).
-   **Use slack to ask questions**

------------------------------------------------------------------------

Assignment 4
------------

**Topics**: Project management, tidying data, HTML Presentations

### Overview

In this assignment you will create an RStudio project in which you get,
tidy, transform, analyze and plot data from a publicly available
dataset. You will host your project in a GitHub repo and create HTML
slides to present your analysis.

**Assigned**: 02/27  
**Due**: Tuesday, 03/06 before 10pm

### Instructions

1.  Create a new project in RStudio called `pa4`. Inside your new
    project, create three folders: `data_raw`, `data_clean`, and
    `slides`.
2.  Download the dataset available
    [here](https://github.com/jvcasillas/datasci_assignments/raw/master/misc/data/pa_4_data/fricatives.zip)
    and store it in `data_raw`.
3.  Generate an HTML presentation using your choice of **ioslides** or
    **xaringan**. Save the RMarkdown file as `index.Rmd` inside of the
    folder `slides`.
4.  Load the dataset from your `index.Rmd` file.
5.  Tidy the data.
6.  Provide a table of descriptive statistics.
7.  Make a boxplot of center of gravity as a function of phoneme. In
    another slide, plot skewness as a function of phoneme. Use a
    statistical transformation (i.e., not a boxplot).
8.  Fit a model that examines center of gravity as a function of
    skewness for the [s] segments (hint: you will have to transform the
    data). Make a table of the model summary.
9.  Make a scatter plot that illustrates the relationship in (8).
10. Check model diagnostics. Make plots.
11. Write up the results (as if it were for a journal article).
12. Host your project in a GitHub repo called `pa4`.
13. Turn the slides into a website using GitHub pages.
14. Inside your dropbox in `datasci_assignments`, create a folder called
    `pa4` that includes a `README.md` file with a link to your slides.
15. Push changes to your version of `datasci_assignments` and submit a
    pull request.

### Evaluation

This is programming assignment 4 of 4. It is worth 10 of the 40 possible
points. In order to receive full credit you must complete steps 1-15
above and follow **all** the instructions.

<table>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="right">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Tidy data</td>
<td align="right">2</td>
</tr>
<tr class="even">
<td align="left">Descriptive stats</td>
<td align="right">0.5</td>
</tr>
<tr class="odd">
<td align="left">Plot data</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="left">Fit a model</td>
<td align="right">2</td>
</tr>
<tr class="odd">
<td align="left">Assess and interpret model</td>
<td align="right">2</td>
</tr>
<tr class="even">
<td align="left">Publish HTML slides using GitHub Pages</td>
<td align="right">2</td>
</tr>
<tr class="odd">
<td align="left">Successfully submit pull request</td>
<td align="right">0.5</td>
</tr>
<tr class="even">
<td align="left"><strong>Total</strong></td>
<td align="right">10</td>
</tr>
</tbody>
</table>

### Tips

-   Follow every instruction step-by-step.
-   Worry about tidying your data, fitting your models, making plots,
    etc., **before** you worry about making the presentation (i.e.,
    making each individual slide). It might be a good idea to use an R
    script first, as we have done in class.
-   Search for help when you get stuck, use stackoverflow and slack.
-   Think of this PA as a practice exam. Use all of the skills you have
    developed up to this point in the class.
-   Review fetching changes in GitHub (to update your
    **datasci\_assignments** repo) and submitting pull-requests (to
    'turn in' your assignment).

------------------------------------------------------------------------

Assignment 5
------------

### Mid-term

**Topics**: Project management, tidying data, fitting linear models,
testing hypotheses, reporting results.

### Overview

In this assignment you will create an RStudio project in which you load,
tidy, transform, plot, analyze and report data. You will host your
project on GitHub in a private repo and create and HTML report (not
slides) to present your analysis.

**Assigned**: 04/03  
**Due**: 04/03 by 13:00

### Background

You are interested in researching how different people learn a second
language. You have collected the data in `lang_data_raw.csv`.
Specifically, you are interested in determining if it is easier/harder
to learn an L2 based on age, and language aptitude. You hypothesize that
younger people learn languages better than older people (for the sake of
this exercise assume that younger implies before puberty and older
implies over 20 years old). Moreover, you think age interacts with
language aptitude, that is, some people are just better at learning
languages, regardless of the age at which they learn. To test your
hypotheses, you have given 200 language learners a proficiency test. You
also have data regarding their iq and a measurement of overall
motivation (for the sake of this exercise also assume that language
aptitude can be assessed with just iq and motivation). Previous
literature on the subject utilizes iq and motivation data to create a
composite language learning ability metric. You need to create this
metric for all of the models you will fit (see instructions below). In
sum, you want to know if proficiency scores vary as a function of age
(younger/older) and composite aptitude score.

### Instructions

1.  Get the latest version of `datasci_assignments`, i.e., fetch the
    newest changes to update your local repo.
2.  Create a new project in RStudio called `pa5`. Inside your new
    project, create two folders: `data_raw` and `data_clean`.
3.  Download the dataset available [here](pa5_learning) and store the
    entire folder in `data_raw`.  
    <https://github.com/jvcasillas/datasci_assignments/raw/master/misc/data/pa_5_data/pa_5_data.zip>
4.  Create a new RMarkdown file called `index.Rmd` and save it at the
    root level of your project (i.e., inside `pa5`). In the yaml front
    matter make sure to give your document an informative title, to
    include your name, and to set the output to `html_document` (this
    should be the default, if not, you may have made a mistake).
5.  Load the dataset from your `index.Rmd` file. Pay special attention
    to the path. Don't forget where the .csv file lives. Print the first
    6 rows of the dataframe.
6.  Tidy the dataset. Keep in mind the principles of tidy data. Use
    sections, text, comments, etc. to explain every step of the process.
7.  Create a new column in the dataset for the composite language
    learning score by taking the log of iq divided by 80 plus the log of
    motivation. Call this variable `composite_score`. After you have
    created this variable, you can standardize or center it if you want
    (i.e., create z-scores, or subtract the mean from each value), but
    this is not obligatory. Hint: don't freak out. You know how to do
    this. See hints at bottom if you need help.
8.  Provide a table of descriptive statistics. You decide what is
    relevant based on the variables you have and your hypotheses.
    Include any observations you can make from the table.
9.  Create an informative plot of the data. You only get one plot, so
    make it count. Keep in mind the types of variables that you have,
    particularly those that are relevant to your hypotheses. Interpret
    the plot (in prose).
10. Again, you are interested in determining if proficiency scores vary
    as a function of `age` and `composite_score`. Fit the appropriate
    model. Test the two-way interaction, the main effect of `age`, and
    the main effect of `composite_score`.
11. Print a summary of the best model and test that the model
    assumptions have been met.
12. Write up the results. You should include a description of the
    statistical analyses you have done in one paragraph, and the actual
    results in another. Don't forget to include an overall assessment of
    goodness of fit (variance explained).
13. Once you have finished steps 1-12, make sure your documents will
    knit successfully. Host your project in a private GitHub repo (call
    it `pa5`), and share it with me (jvcasillas). You do not need to
    make it a website.
14. Create a new folder in your `datasci_assignments` dropbox folder.
    Include a `README.md` file with a link to your repo (just the repo,
    not a website).
15. Celebrate. You survived.

### Evaluation

This is programming assignment 5. There are a total of 10 possible
points. In order to receive full credit you must complete steps 1-14
above and follow **all** the instructions.

<table>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="right">Points</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Create <code>pa5</code> project with correct structure</td>
<td align="right">0.25</td>
</tr>
<tr class="even">
<td align="left">Create <code>index.Rmd</code> with title and author info</td>
<td align="right">0.25</td>
</tr>
<tr class="odd">
<td align="left">Load data and print first 6 rows</td>
<td align="right">0.25</td>
</tr>
<tr class="even">
<td align="left">Tidy the data</td>
<td align="right">0.25</td>
</tr>
<tr class="odd">
<td align="left">Create <code>composite_score</code> variable</td>
<td align="right">1.0</td>
</tr>
<tr class="even">
<td align="left">Create table of relevant descriptive stats</td>
<td align="right">1.0</td>
</tr>
<tr class="odd">
<td align="left">Generate an informative plot data and accurately describe it</td>
<td align="right">1.0</td>
</tr>
<tr class="even">
<td align="left">Fit inclusive model and appropriate nested models</td>
<td align="right">1.0</td>
</tr>
<tr class="odd">
<td align="left">Test two-way interaction and main effects</td>
<td align="right">1.0</td>
</tr>
<tr class="even">
<td align="left">Print model summary and test assumptions</td>
<td align="right">1.0</td>
</tr>
<tr class="odd">
<td align="left">Write up results for publication</td>
<td align="right">2.0</td>
</tr>
<tr class="even">
<td align="left">Create private repo</td>
<td align="right">0.5</td>
</tr>
<tr class="odd">
<td align="left">Successfully submit pull request</td>
<td align="right">0.5</td>
</tr>
<tr class="even">
<td align="left"><strong>Total</strong></td>
<td align="right">10</td>
</tr>
</tbody>
</table>

### Hints

-   Make use of markdown syntax. Include appropriate sections,
    subsections, etc.
-   Comment all of your code. If you get stuck, explain what you are
    trying to do. If you find help on the internet or in slides from
    class, include a link in your comments.
-   The equation for the composite score can be written like this:

        composite aptitude score = log(iq / 80) + log(motivation)

-   You get 1 lifeline. Ask me if you need help.
