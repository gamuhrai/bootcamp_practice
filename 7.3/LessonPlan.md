# 7.3: Hypothesis Testing and Statistical Tests

## Overview

In today's lesson, the students will be introduced to basic hypothesis testing and several statistical tests.

## Class Objectives

By the end of this lesson, the students will be able to:

* Apply ANOVA to compare the means of three or more groups.

## Instructor Prep

<details>
  <summary><strong>Instructor Notes</strong></summary>

* Your project week may have been shifted due to a holiday; if so, the students will have less time to work on projects today.

  * If this class falls on a weekday and requires a **3-Hour Adjustment**, please limit your break to 15 minutes and provide the students a break where you deem most appropriate.

  * It may be helpful to remind students that they can use office hours before or after class for additional project work time.

  * Alternatively, teams can coordinate to work on their projects outside of class.

* Today's class will introduce the students to hypothesis testing and statistical tests. Many of the students will want to add statistical rigor to their analysis, so this lesson provides a helpful starting point for advancing their analysis.

* Today's class is designed to provide a high-level overview of hypothesis testing, null hypotheses, and common statistical tests using the `scipy.stats` model. The activities are designed to cover the tests at a conceptual level as opposed to an in-depth mathematical discussion. The activities will provide examples of applying statistical tests through functions available in the `scipy.stats` library.

* Encourage the students to practice these tests by revisiting previous activities and choosing the appropriate test to apply. They will also be required to add at least one statistical test to their first project.

* Please reference our [Student FAQ](../../../05-Instructor-Resources/README.md#unit-07-project-1) for answers to questions frequently asked by students of this program. If you have any recommendations for additional questions, feel free to log an issue with your desired additions.

* As always, have your TAs refer to the [Time Tracker](TimeTracker.xlsx) to keep the lesson on track.

* If you have issues with any of today's activities, you may report them [here](http://tiny.cc/BootCampFeedback).

* As a reminder, these slideshows are for instructor use only&mdash;when distributing slides to students, please first export the slides to a PDF file. You may then send out the PDF file.

</details>

- - -

# Class Activities

## 1. Welcome & Forming a Null Hypothesis

| Activity Time:       0:35 |  Elapsed Time:      0:35  |
|---------------------------|---------------------------|

<details>
  <summary><strong>📣 1.1 Instructor Do: Welcome Class (5 min)</strong></summary>

* Take a moment to welcome students to class.

* Open the [slideshow](https://docs.google.com/presentation/d/1OD9rUO7xXQvXMs5XRNsXpcV-Xfy-S8cjU3cyJTsCClc/edit?usp=sharing) and welcome the class.

</details>

<details>
  <summary><strong>📣 1.2 Instructor Do: Introduction to Hypothesis Testing (15 min)</strong></summary>

* Use the slideshow to accompany the beginning of this demonstration.

* Explain that **hypothesis testing** is a way to test a theory or question.

* Ask the students for examples of data questions that they could ask, and then provide the following examples:

  * Does this new medication work?

  * Is the cost of living higher in this city?

  * Does this group score higher than another group?

* Explain that a large part of statistics, and the scientific process, is to identify a hypothesis and then try to determine if the observations or effects could be due to chance.

* Explain the following points about hypothesis testing:

  * Hypothesis testing applies statistical methods to determine if something happened purely by chance.

  * Scientists and researchers often form a hypothesis for their observations, along with a **null hypothesis**, which assumes that observations or effects happened simply by chance.

  * The goal of hypothesis testing is to reject the null hypothesis through statistical tests. Rejecting the null hypothesis presumes that the hypothesis was true.

  * A hypothesis is a measurable and testable statement about something that you expect will happen.

  * The hypothesis is often expressed as an **if**-**then** statement, as in the following example:

    * "If San Diego, CA, is warmer than Austin, TX, in July, then the average daily temperature will be higher."

  * The null hypothesis typically states that NO differences exist between the variables or groups of interest, as in the following example:

    * "If San Diego, CA, is not warmer than Austin, TX, in July, then there will be no difference in the average daily temperatures."

  * Rejecting the null hypothesis is never absolute. Instead, statisticians calculate the probability of observing the event: This is called the **p-value**. The p-value is then compared to a fixed significance level to determine if the null hypothesis can be rejected. A smaller p-value indicates stronger evidence against the null hypothesis.

* Explain the following steps for hypothesis testing:

  1. Determine the hypothesis and null hypothesis.

  2. Identify the appropriate statistical test.

  3. Determine the acceptable significance value.

  4. Compute the p-value.

  5. Determine if the p-value rejects the null hypothesis by comparing it to the significance value (Typically &lt; 0.05).

</details>

<details>
  <summary><strong>👥 1.3 Partners Do: Forming a Null Hypothesis (10 min)</strong></summary>

* Continue the slideshow and ask the students to work in pairs to convert each of the following questions into a hypothesis and a null hypothesis.

Send out the following file or instructions, both of which contain the questions for this activity:

* **Files**

  * [01-Par_Null_Hypothesis/README.md](Activities/01-Par_Null_Hypothesis/README.md)

* **Instructions**

  * Convert the following questions into a null hypothesis and an alternate hypothesis.

    1. Does dark chocolate affect arterial function in healthy individuals?

    2. Does coffee have anti-aging properties?

</details>

<details>
  <summary><strong>⭐ 1.4 Review: Forming a Null Hypothesis (5 min)</strong></summary>

* You may also use the slideshow while you review the activity.

* Call on random groups to share their answers; as they share their thoughts, guide them to the following answers to the questions:

  * Question: Does dark chocolate affect arterial function in healthy individuals?

    * Hypothesis: If dark chocolate is related to arterial function in healthy individuals, then consuming 30 g of dark chocolate daily over the course of 1 year will result in improved arterial function.

    * Null hypothesis: If dark chocolate is not related to arterial function in healthy individuals, then consuming 30 g of dark chocolate daily over the course of 1 year will result in no improvement in arterial function.

  * Does coffee have anti-aging properties?

    * Hypothesis: If coffee consumption is related to anti-aging properties, then consuming 400 mg of coffee daily will reduce mortality from age-related diseases, such as heart disease.

    * Null hypothesis: If coffee consumption is not related to anti-aging properties, then consuming 400 mg of coffee daily will not result in a reduction in age-related diseases, such as heart disease.

* Take a moment to address any questions before moving on.

</details>

- - -

## 2. T-Test

| Activity Time:       0:30 |  Elapsed Time:      1:05  |
|---------------------------|---------------------------|

<details>
  <summary><strong>📣 2.1 Instructor Do: T-Test (10 min)</strong></summary>

* Use the slideshow to accompany this demonstration.

* Introduce students to the **t-test**, and explain the following points:

  * A common question in statistics is whether or not one group is significantly different from another group.

  * The set of entities being studied is referred to as the **population**, while a subset of a population is referred to as a **sample**.

  * A t-test can be used to compare the mean of a sample to the population (a one-sample t-test) or the difference between population means (an independent t-test).

  * The null hypothesis assumes that the two means are equal; therefore, the goal of the t-test is to determine how much evidence exists to support the rejection of the null hypothesis.

* Open the notebook, [Ins_1samp_ttest.ipynb](Activities/02-Ins_TTest/Solved/Ins_1samp_ttest.ipynb), and highlight the following:

  * The helper code is designed to generate test data and show its distribution.

  * One-sample t-tests are used to compare the sample mean to the population mean.

  * The `scipy.stats.ttest_1samp` function will accept an array of samples and compare the sample mean to the population mean.

  * The p-value of the first example, captured in the following code output, is not statistically significant assuming a significance of `p-value < 0.05`:

    ```python
    # T-Test Output:
    Ttest_1sampResult(statistic=-0.912976906342992, pvalue=0.36235943886051503)
    ```

  * The second dataset has a larger difference in means, which results in a statistically significant p-value, as captured in the following image and code:

    ![ttest_1samp_dataset2](https://static.bc-edx.com/data/dl-1-2/m7/lessons/3/img/ttest_1samp_dataset2.png)

    ```python
    # T-Test Output:
    Ttest_1sampResult(statistic=-31.293376800980507, pvalue=8.6800698449009275e-79)
    ```

* Explain that we can also use a two-sample t-test to compare two population means.

* Open this [notebook](Activities/02-Ins_TTest/Solved/Ins_independent_ttest.ipynb), and highlight the following points:

  * The independent t-test can be used to compare the means of two populations.

  * The two groups (populations) should be independent from each other, which means that a test subject in the first group could not also be in the second group.

  * The underlying assumptions for this test are independence, normality, and homogeneity.

  * The [scipy.stats.ttest_ind](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html) function is used to perform the calculations.

  * The parameter `equal_var=False` performs a Welch's t-test, which does not assume equal population variance (homogeneity).

  * The p-value of 0.096 in the first example is not statistically significant assuming a `p-value < 0.05`. However, the second dataset has a larger difference in means, which does support the rejection of the null hypothesis (`p-value < 0.05`).

* Ask students for any remaining questions before proceeding on.

</details>

<details>
  <summary><strong>✏️ 2.2 Students Do: T-Test (15 min)</strong></summary>

* Continue the slideshow to present this activity to the students.

* Explain that this activity will use a t-test to compare the differences in the heights of non-related individuals from two different locations.

* Send out the following file and instructions:

  * **File**

    * [Stu_Stranger_Heights.ipynb](Activities/03-Stu_Stranger_Heights-TTest/Unsolved/Stu_Stranger_Heights.ipynb)

  * **Instructions**

  * Calculate the mean for each population.

  * Use a t-test to determine if there is a statistically significant difference between the height of strangers in San Francisco and Denver.

  * It is up to you to determine if you should use a one-sample or independent t-test.

  * Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

</details>

<details>
  <summary><strong>⭐ 2.3 Review: Stranger Heights T-Test (5 min)</strong></summary>

* You may choose to use the slideshow while reviewing the activity.

* Before opening the solution, ask students if the solution required a one-sample or independent (two-sample) t-test.

* Explain that we are comparing two independent populations, so an independent t-test is required.

* Open the [solved notebook](Activities/03-Stu_Stranger_Heights-TTest/Solved/Stu_Stranger_Heights.ipynb), and highlight the following:

  * The metadata indicates that `location=1` corresponds to San Francisco and `location=5` corresponds to Denver.

  * The means for both of these populations appear similar.

  * The `p-value` of 0.372 does not reject the null hypothesis.

* Ask for any remaining questions before proceeding on.

</details>

- - -

## 3. ANOVA

| Activity Time:       0:25 |  Elapsed Time:      1:30  |
|---------------------------|---------------------------|

<details>
  <summary><strong>📣 3.1 Instructor Do: ANOVA (10 min)</strong></summary>

* Use the slideshow to accompany this demonstration.

* Explain that we often want to compare the means of more than two groups. In the previous activity, for example, we might also be interested in knowing if any of the locations had significant differences from the other locations.

* Explain that we can use an analysis of variance (ANOVA) test to compare more than one population.

* Highlight the following points about the ANOVA test:

  * Analysis of variance (ANOVA) is a test used to compare the means of multiple groups.

  * ANOVA assumes the null hypothesis that there is no difference between groups.

  * Any mean that is significantly different from the rest will result in a low p-value.

* Explain the following points about the data for this demonstration:

  * This paper compares the average resting heart rates of five different people exercising in a given week.

  * ANOVA is applied to compare all 5 categories.

  * ANOVA implies only a statistically significant difference between the group means; further analysis has to be completed between the groups.

* Open the notebook, and go through the following points:

  * The box plots of each number of workouts, as captured in the following image, indicate a difference in at least one of the categories of exercise.

    ![resting_heart_rate](https://static.bc-edx.com/data/dl-1-2/m7/lessons/3/img/resting_heart_rate.png)

  * The number of workouts can be filtered in Pandas to separate the groups:

  ```python
  # Extract individual groups
  group0 = df[df["num_workouts"] == 0]["resting_heart_rate"]
  group1 = df[df["num_workouts"] == 1]["resting_heart_rate"]
  group2 = df[df["num_workouts"] == 2]["resting_heart_rate"]
  group3 = df[df["num_workouts"] == 3]["resting_heart_rate"]
  group4 = df[df["num_workouts"] == 4]["resting_heart_rate"]
  ```

  * The `f_oneway` function in `scipy.stats` is used to test the null hypothesis that two or more groups have the same population mean:

  ```python
  stats.f_oneway(group0, group1, group2, group3, group4)
  ```

* Remind students that ANOVA indicates only that the group means are different; additional testing is required to compare specific groups.

* Point out that we must satisfy important assumptions before the p-value can be considered valid; the following three assumptions are taken from the [scipy.stats documentation](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.f_oneway.html):

  1. The samples are independent.
  2. Each sample is from a normally distributed population.
  3. The population standard deviations of the groups are all equal.

  * Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

</details>

<details>
  <summary><strong>✏️ 3.2 Students Do: ANOVA (10 min)</strong></summary>

* Use the slideshow to present this activity to the students.

* Explain that this activity will use ANOVA to compare differences in pain tolerance based on how many times a person exercises in a given week.

* Send out the following file and instructions:

  * **File**

    * [exercise_anova.ipynb](Activities/05-Stu_ANOVA/Unsolved/exercise_anova.ipynb)

  * **Instructions**

  * Perform a one-way ANOVA test to determine if there are any significant differences in number of workouts per week vs. pain tolerance.

  * Create a box plot to show the distribution of pain tolerances for each category of workout frequency.

  * Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

</details>

<details>
  <summary><strong>⭐ 3.3 Review: ANOVA (5 min)</strong></summary>

* You may choose to use the slideshow while you review the activity.

* Open the [solved notebook](Activities/05-Stu_ANOVA/Solved/exercise_anova.ipynb), and highlight the following points:

  * The `num_workouts` type is used to filter the pain measurements into separate groups.

  * The ANOVA calculation rejects the null hypothesis with a `p-value < 0.05`.

  * ANOVA does not tell us which workout frequencies have significantly different pain tolerance results;  it tells us only that at least one type was significantly different from the rest.

</details>

- - -

## 4. Chi Square

| Activity Time:       0:30 |  Elapsed Time:      2:00  |
|---------------------------|---------------------------|

<details>
  <summary><strong>📣 4.1 Instructor Do: Chi Square (15 min)</strong></summary>

* Use the slideshow to accompany this demonstration.

* **Files:**

  * [Ins-Chi_square.ipynb](Activities/06-Ins_Chi_Square/Solved/Ins-Chi_square.ipynb)

* Using the slideshow, explain what the chi-square test is and when it is used; also explain each term in the chi-square value formula and the steps taken to perform the test.

</details>

<details>
  <summary><strong>✏️ 4.2 Students Do: Chi Square (10 min)</strong></summary>

* Use the slideshow to present this activity to the students.

* **Files:**

  * [07-Stu_Chi_Square/README.md](Activities/07-Stu_Chi_Square/README.md)

  * [Stu-Cafes.ipynb](Activities/07-Stu_Chi_Square/Unsolved/Stu-Cafes.ipynb)

* In this activity, students will perform the chi-square test, first with Python and then by hand.

</details>

<details>
  <summary><strong>⭐ 4.3 Review: Chi Square (5 min)</strong></summary>

* You may choose to use the slideshow while you review the activity.

* State the null hypothesis to the class:

  * In this case, the null hypothesis would be that there is no statistical difference in the number of visits to each of the four cafés.

  * Since the total number of visits to all four cafés is 6,000, the expected number for each café is 6000 divided by 4, or 1,500.

  * The expected column is added to the DataFrame, as captured in the following image:

  ![Images/chi01.png](https://static.bc-edx.com/data/dl-1-2/m7/lessons/3/img/chi01.png)

* Explain how to determine the critical value:

  * `stats.chi2.ppf()` is used to establish the value in Python.

  * The p-value is 0.05, so the confidence level is 0.95.

  * The degree of freedom is 3, as captured in the following image. There are four rows of variables (cafés), and only the values of three of them are necessary to determine the values of all rows.

  ![Images/chi02.png](https://static.bc-edx.com/data/dl-1-2/m7/lessons/3/img/chi02.png)

  * It is also possible to consult a chi-square distribution table, such as <https://www.medcalc.org/manual/chi-square-table.php>, to obtain the critical value.

* Finally, compare the chi-square value to the critical value.

  * Use `stats.chisquare()`; its first argument should be the observed values, and its second argument should be the expected values, as captured in the following image:

  ![Images/chi03.png](https://static.bc-edx.com/data/dl-1-2/m7/lessons/3/img/chi03.png)

  * Compare the chi-square value with the critical value.

  * Since 23.3 is greater than the critical value of 7.8, we can conclude that the differences in the number of café visits are statistically significant.

</details>

- - -

## Break

| Activity Time:       0:40 |  Elapsed Time:      2:40  |
|---------------------------|---------------------------|

⏰ **3-Hour Adjustment**: Break will be 15 minutes.

- - -

## 5. Project Work

| Activity Time:       1:20 |  Elapsed Time:      4:00  |
|---------------------------|---------------------------|

<details>
  <summary><strong>🎉 5.1 Everyone Do: Project Work (80 min)</strong></summary>

⏰**3-Hour Adjustment**: Reduce activity time to 45 minutes.

* The students should spend the remainder of class working on their project with their group.

* Make sure to check in with each project team to get a sense of how they are progressing.

</details>

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
