## Assignment 5

### Mid-term

**Topics**: Project management, tidying data, fitting linear models, 
testing hypotheses, reporting results.


### Overview

In this assignment you will create an RStudio project in which you 
load, tidy, transform, plot, analyze and report data. You will host 
your project on GitHub in a private repo and create and HTML report 
(not slides) to present your analysis. 

**Assigned**: 04/03  
**Due**: 04/03 by 13:00

### Background

You are interested in researching how different people learn a second 
language. You have collected the data in `lang_data_raw.csv`. 
Specifically, you are interested in determining if it is easier/harder 
to learn an L2 based on age, and language aptitude. 
You hypothesize that younger people learn languages better than older 
people (for the sake of this exercise assume that younger implies before 
puberty and older implies over 20 years old). Moreover, you think age 
interacts with language aptitude, that is, some people are just better 
at learning languages, regardless of the age at which they learn. To test 
your hypotheses, you have given 200 language learners a proficiency test. 
You also have data regarding their iq and a measurement of overall motivation 
(for the sake of this exercise also assume that language aptitude can be 
assessed with just iq and motivation). Previous literature on the subject 
utilizes iq and motivation data to create a composite language learning 
ability metric. You need to create this metric for all of the models you 
will fit (see instructions below). In sum, you want to know if proficiency 
scores vary as a function of age (younger/older) and composite aptitude 
score. 


### Instructions

1. Get the latest version of `datasci_assignments`, i.e., fetch the newest 
changes to update your local repo.
2. Create a new project in RStudio called `pa5`. Inside your new project, 
create two folders: `data_raw` and `data_clean`. 
3. Download the dataset available [here](pa5_learning) and store the 
entire folder in `data_raw`.  
https://github.com/jvcasillas/datasci_assignments/raw/master/misc/data/pa_5_data/pa_5_data.zip
4. Create a new RMarkdown file called `index.Rmd` and save it at the root 
level of your project (i.e., inside `pa5`). In the yaml front matter make 
sure to give your document an informative title, to include your name, and 
to set the output to `html_document` (this should be the default, if not, 
you may have made a mistake). 
5. Load the dataset from your `index.Rmd` file. Pay special attention to the 
path. Don't forget where the .csv file lives. Print the first 6 rows of the 
dataframe. 
6. Tidy the dataset. Keep in mind the principles of tidy data. Use sections, 
text, comments, etc. to explain every step of the process. 
7. Create a new column in the dataset for the composite language learning 
score by taking the log of iq divided by 80 plus the log of motivation. Call 
this variable `composite_score`. After you have created this variable, you can 
standardize or center it if you want (i.e., create z-scores, or subtract the 
mean from each value), but this is not obligatory. Hint: don't freak out. You 
know how to do this. See hints at bottom if you need help. 
8. Provide a table of descriptive statistics. You decide what is relevant based 
on the variables you have and your hypotheses. Include any observations you 
can make from the table. 
9. Create an informative plot of the data. You only get one plot, so make it 
count. Keep in mind the types of variables that you have, particularly those 
that are relevant to your hypotheses. Interpret the plot (in prose). 
10. Again, you are interested in determining if proficiency scores vary as a 
function of `age` and `composite_score`. Fit the appropriate model. Test the 
two-way interaction, the main effect of `age`, and the main effect of 
`composite_score`.
11. Print a summary of the best model and test that the model assumptions have 
been met. 
12. Write up the results. You should include a description of the statistical 
analyses you have done in one paragraph, and the actual results in another. 
Don't forget to include an overall assessment of goodness of fit (variance 
explained). 
13. Once you have finished steps 1-12, make sure your documents will knit 
successfully. Host your project in a private GitHub repo (call it `pa5`), and 
share it with me (jvcasillas). You do not need to make it a website. 
14. Create a new folder in your `datasci_assignments` dropbox folder. Include 
a `README.md` file with a link to your repo (just the repo, not a website). 
15. Celebrate. You survived. 



### Evaluation

This is programming assignment 5. There are a total of 10 possible 
points. In order to receive full credit you must complete steps 1-14 
above and follow **all** the instructions. 

|                             Task                             | Points |
| :----------------------------------------------------------- | -----: |
| Create `pa5` project with correct structure                  |   0.25 |
| Create `index.Rmd` with title and author info                |   0.25 |
| Load data and print first 6 rows                             |   0.25 |
| Tidy the data                                                |   0.25 |
| Create `composite_score` variable                            |    1.0 |
| Create table of relevant descriptive stats                   |    1.0 |
| Generate an informative plot data and accurately describe it |    1.0 |
| Fit inclusive model and appropriate nested models            |    1.0 |
| Test two-way interaction and main effects                    |    1.0 |
| Print model summary and test assumptions                     |    1.0 |
| Write up results for publication                             |    2.0 |
| Create private repo                                          |    0.5 |
| Successfully submit pull request                             |    0.5 |
| **Total**                                                    |     10 |




### Hints

- Make use of markdown syntax. Include appropriate sections, subsections, etc. 
- Comment all of your code. If you get stuck, explain what you are trying to 
do. If you find help on the internet or in slides from class, include a link in 
your comments. 
- The equation for the composite score can be written like this:  
```
composite aptitude score = log(iq / 80) + log(motivation)
```
- You get 1 lifeline. Ask me if you need help. 

