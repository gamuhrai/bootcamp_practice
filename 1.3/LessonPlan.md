## 1.3 Charting a New Course with Excel

### Overview

In today's class, students will learn to create data visualizations using basic and advanced charting in Excel.

### Class Objectives

By the end of this lesson, the students will be able to:

* Create, modify, and stylize basic charts from start to finish in Microsoft Excel.
* Create scatter plots and trend lines.
* Create charts that contain filtered data.
* Create regressions and calculate moving averages in Excel.

---

### Instructor Notes

* Today's class covers some statistics which may be challenging for students. Teaching assistants should circulate to help any student that is stuck.

### Class Slides

* The slides for this lesson can be viewed on Google Drive here: [Lesson 1.3 Slides](https://docs.google.com/presentation/d/1GYnNWroWzp4sETcRt_fsIsE5Z9kk4tXG68HQ00x7AeU/edit?usp=sharing).

* To add the slides to the student-facing repository, download the slides as a PDF by navigating to File, selecting "Download as," and then choosing "PDF document." Then, add the PDF file to your class repository along with other necessary files. You can view instructions for this [here](https://docs.google.com/document/d/1XM90c4s9XjwZHjdUlwEMcv2iXcO_yRGx5p2iLZ3BGNI/edit).

* **Note:** Editing access is not available for this document. If you wish to modify the slides, create a copy by navigating to File and selecting "Make a copy...".

---

### Time Tracker

| Start Time | Number | Activity                                           | Duration |
| ---------- | ------ | -------------------------------------------------- | -------- |
| 6:30 PM    | 1      | Instructor Do: Welcome Class                       | 0:05     |
| 6:35 PM    | 2      | Everyone Do: Adding files to GitHub                | 0:10     |
| 6:45 PM    | 3      | Instructor Do: Basic Charting                      | 0:15     |
| 7:00 PM    | 4      | Students Do: The Line and Bar Grades               | 0:10     |
| 7:10 PM    | 5      | Review: The Line and Bar Grades                    | 0:05     |
| 7:15 PM    | 6      | Instructor Do: Scatter Plots and Trend Lines       | 0:10     |
| 7:25 PM    | 7      | Partners Do: St. Louis, MO Home Sales              | 0:10     |
| 7:35 PM    | 8      | Review: St. Louis, MO Home Sales                   | 0:05     |
| 7:40 PM    | 9      | Everyone Do: The Need to Filter                    | 0:10     |
| 7:50 PM    | 10     | Partners Do: Filter Home Sales                     | 0:15     |
| 8:05 PM    | 11     | Review: Filter Home Sales                          | 0:05     |
| 8:10 PM    | 12     | BREAK                                              | 0:15     |
| 8:25 PM    | 13     | Instructor Do: Variance, Standard Deviation, and Z-Score | 0:20     |
| 8:45 PM    | 14     | Students Do: Variance, Standard Deviation, and Z-Score Review | 0:10     |
| 8:55 PM    | 15     | Review: Variance, Standard Deviation, and Z-Score  | 0:05     |
| 9:00 PM    | 16     | Instructor Do: Quantiles, Outliers, and Box Plots  | 0:15     |
| 9:15 PM    | 17     | Students Do: Cereal Outliers                       | 0:10     |
| 9:25 PM    | 18     | Review: Cereal Outliers                            | 0:05     |
| 9:30 PM    |        | END                                                |          |

---

### 1. Instructor Do: Welcome Class (5 min)

You may choose to open up the slideshow, and step through slides 1 through 5 to help welcome the class. Be sure to cover the following talking points:

  * Explain that we will use what we learned in the previous two classes to work through more-advanced activities.

  * Reassure students that we will thoroughly review each concept, and encourage the students to ask questions.

  * If this is the first combined class, take a few moments to have each professor and TA briefly introduce themselves. This way, students will feel comfortable asking questions to all instructional team members.

---

### 2. Everyone Do: Adding files to GitHub (10 min)

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Tell students that "GitHub offers a centralized location where all developers can push and pull, or upload and download, their code."

  * Point out that GitHub always holds the most up-to-date code and files, handling everyone's updates appropriately.

  * Explain that for now, we only need to know how to use the GUI for GitHub to submit homework.

  * Explain that later in the course, we will learn to use Git to work with GitHub through the terminal.

  * Point out to students that Git and GitHub will get easier to use with experience.

Guide students through the following steps:

  * Visit <https://github.com>, and ask students to log in to their personal accounts.

  * From the main page, create a new repository with an initializing `README.md` file, as detailed in the following screenshots and instructions. Explain that it’s standard in the tech world to include a "README" file that explains what each repository contains.

    ![git repo](Images/GitDemo_1.png)

  * Make the repository public so TAs can always access it for grading.

  * Then, click on the “Add .gitignore” button and type "Python", as in the following image:

    ![create git ignore](Images/Git_ignore_1.png)

  * Click the green “Create repository” box. After clicking “Create repository”, you’ll now be on the homepage of your repository.

    * The purpose of the gitignore file is to ensure that GitHub can ignore certain files that do not need to be tracked.

    * Click the `.gitignore` file in your repository to open the file, as in the following image:

      ![create git ignore](Images/Git_ignore_2.png)

    * In the `.gitignore` file, you’ll find files that won’t be tracked for this repository. Files are organized by extension and distribution packages, as in the following image:

      ![Git ignore file](Images/Git_ignore_3.png)

    * If you don’t want GitHub to track a file, you can edit the `.gitignore` file by adding the file name or file extension.

    * Let's untrack a common file, `.DS_Store`, for this repository. The `.DS_Store` file is created and maintained by the macOS Finder application in every folder; it has functions similar to the file `desktop.ini` in Microsoft Windows.

      * Click on the pencil icon in the `.gitignore` file to edit the file.
      * Once in edit mode, add the following code to the `.gitignore` above the `# Distribution / packaging` section.

      ```python
      # .DS_Store
      .DS_Store
      ```

      * Scroll to the end and enter the commit message, "Updating .gitignore file.", where it says “Commit changes”.
      * Then, click the green “Commit changes” button, as in the following image:

      ![edit git ignore](Images/Git_ignore_4.png)

  * Switch back to the computer's desktop, create a new empty Excel file, and save the file. We’ll use this file to demonstrate how to upload new files.

  * Navigate back to the repository homepage that you created, and click “Upload files,” as in the following image:

    ![upload file](Images/GitDemo_upload.png)

  * Choose your Excel file in the dialog box; instead of the “Upload Files” button, you may also drag files from your desktop to the GitHub repo web page. Add a commit message, and commit the changes.

  * Finally, refresh the web page to show that the new file is now saved to the repository, as captured in the following GIF:

    ![drag file](Images/GitDemo_filedrag.gif)

Confirm that all students were able to follow these instructions. Tell the students that they will need to follow these steps to submit their homework for the first two weeks of class. Students will add all of the necessary files to their GitHub repo, then submit the repository link to BCS.

Encourage students to practice using GitHub before the next class and to use office hours if they experience any issues.

---

### 3. Instructor Do: Basic Charting (15 min)

**Corresponding Activity:** [02-Ins_BasicCharting](Activities/02-Ins_BasicCharting)

During this demonstration, have the TAs send out the images for where things are located on the opposite operating system.

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Point out that until this class, we haven't explored a primary feature of Microsoft Excel: visualizations.

  * Explain that this next activity will be an instructor demonstration of how to generate visualizations in Excel. Most of the commands and concepts are the same between Mac and Windows operating systems, but Excel is slightly different across operating systems.

  * Reassure students that as we proceed through the demonstration, the TAs will be sending out images of each step for both operating systems. Therefore, everyone should be able to follow along on their computer.

  * Explain that today we will concentrate on four primary plot types: scatter plots, line plots, bar plots, and box plots.

Now, open the [ice_cream_faves.xlsx](Activities/02-Ins_BasicCharting/Unsolved/ice_cream_faves.xlsx) file, and select all of the data in columns A and B. Your selection should include the header rows containing the column labels and all the rows containing data. Then, navigate to the “Insert” tab at the top of the application, and introduce the available charting options in the “Charts” group.

**PC** Excel chart options are captured in the following image:

  ![Excel chart options in Windows](Images/PC_chart_options.png)

**Mac** Excel chart options are captured in the following image:

  ![Excel chart options on Macs](Images/MAC_chart_options.png)

Excel enables users to create many kinds of charts, but first we’ll create a bar chart since that fits our data nicely.

Whenever you select a charting option from the “Charts” group, a new menu will appear that allows you to select various visual options. For bar charts, we can choose between 2-D or 3-D visuals with a horizontal or vertical layout.

  * For now, use the vertical 2-D chart since it is the most basic and commonly used option.

Once a chart option has been selected, a new chart will automatically be placed into the spreadsheet. Clicking on this chart will allow us to edit it; we can also double-click on any element of the chart to edit it more specifically.

  * For now, click on the chart's title, and demonstrate that we can rename the chart. Note to students that the title may be the generic "Chart Title" if we did not include the header rows in our selection.

**PC steps**

  * Next, click the plus sign to the right of our chart. This will bring up a list of elements and sub-elements that we can add or remove, as in the following image:

    ![Images/PC_AddElements.png](Images/PC_AddElements.png)

  * Select the “Axes Titles” option to add titles for our vertical and horizontal axes. Then, click the arrow to the right of the “Axes Titles” option to open the sub-menu, which allows us to choose the specific titles that we would like to include.

  * By clicking the paintbrush to the right of a chart, we can access options for “Style” and “Color.” Style options include several basic visual styles. Color options include various color schemes that we can apply to our chart, as in the following image:

    ![Images/PC_ChartColors.png](Images/PC_ChartColors.png)

  * Selecting a new color palette may not feel like much at first, but if we double-click on the bars of our chart, a new menu will pop up to the side of the application and allow us to format our bars. If we then click on the paint can and select the “Vary colors by point” option, each bar will be given a different color that fits the palette we selected earlier.

**Mac steps**

  * Click “Add Chart Element” on the left side of the ribbon, then click “Axis Titles”. Here, you can select “Primary Horizontal” or “Primary Vertical,” as in the following image:

    ![Images/MAC_axis.png](Images/MAC_axis.png)

  * On the ribbon to the right of “Add Chart” Element, click “Change Colors” to change the colors of the bar graph.

  * Double-click any of the bars to bring up the “Format Data Series” menu. Here, we can check the option to “Vary colors by point” to give each bar a different color, as in the following image:

    ![Images/Mac_colors.png](Images/Mac_colors.png)

Note to students that the format menu for a chart element can be opened by double-clicking any individual element. This lets them control all aspects of the visualization. Reiterate that the exact location of the formatting control may differ between versions of Excel.

Let's say that we made a bar chart, but then our employer told us that they really wanted a pie chart. Luckily for us, Excel has an option that allows us to change a chart's type by opening the chart's right-click menu and selecting "Change chart type". This means we can easily turn a bar chart into a pie chart in Excel.

  * You can also change a chart's type by selecting the chart, going into the “Design” tab's “Type” group, and clicking "Change Chart Type".

  * Change the bar chart we’ve been working on into a pie chart. Be sure to add in the "Legend" element for our new pie chart. Otherwise, no one will know what each slice of the pie represents.

    * On Macs, you can add a legend by clicking "Add Chart Element" on the ribbon, selecting "Legend", and then choosing the location of the legend, as in the following image:

      ![Images/mac_legend.png](Images/mac_legend.png)

Another essential type of graph is the line graph. But the data that we’re using is not ideal for creating a line graph. Ask the students why this is the case.

  * “Our data does not show any changing trends over time. It instead compares a single piece of data across multiple named categories.”

Open [basic_charts.xlsx](Activities/02-Ins_BasicCharting/Solved/basic_charts.xlsx) in Excel, and navigate to the second sheet, named "Ice Cream Sales." This sheet contains data over time: how many scoops of different ice cream flavors have been sold over a year.

  * Select all the data on this sheet, and then choose a 2-D line chart from the “Charts” group on the “Insert” tab, as in the following image: Remember: your selection should include the rows and columns that contain the  data labels:

    ![PC Line Charts](Images/PC_LineGraph.png)

  * Ensure that your students are aware of how cluttered this chart is. This makes it difficult to glean information or draw conclusions from the data visualization.

    * **PC steps**: To filter the rows you'd like to include, choose the third option to the right of the chart. This option allows us to filter what categories of data, or ice cream flavors, that we would like to show.

      * Select a few ice cream flavors from the list, and then hit the "Apply" button to filter the data for our chart.

    * **Mac steps**: To filter what data is shown on the chart, select the “Home” tab, select column “A”, then click “Sort & Filter” on the right-hand side of the ribbon. Note that “Sort & Filter” may be hidden in the “Editing” tab at certain screen or window sizes. Select “Filter” to set your column in filter mode, then click the arrow dropdown in the column A header cell: there, you will find the options for sorting and filtering. The following GIF captures this process:

      ![Images/mac-line-chart-filter.gif](Images/mac-line-chart-filter.gif)

      * Select a few ice cream flavors from the list, update the chart, and note the difference in the line chart’s readability.

    * It is important to note that the filter options listed here are limited. When we would like to filter out data based on some condition (for example, greater than, less than, etc.), these limited filter options will not be adequate.

Answer any questions that your students may have before moving on to the next activity.

---

### 4. Students Do: The Line and Bar Grades (10 min)

**Corresponding Activity:** [03-Stu_LineAndBar](Activities/03-Stu_LineAndBar)

For this activity, students will take on the role of the teacher as they create bar and line graphs to visualize a class’s grades over a semester.

You may choose to open up the slideshow, and step through the next few slides to accompany this activity.

**File:** [student_grades.xlsx](Activities/03-Stu_LineAndBar/Unsolved/student_grades.xlsx)

**Instructions:** [README.md](Activities/03-Stu_LineAndBar/README.md)

---

### 5. Review: The Line and Bar Grades (5 min)

Open and send out the [solution](Activities/03-Stu_LineAndBar/Solved/student_grades_solution.xlsx) version of the previous activity before reviewing it with your students. Be sure to answer any questions that they may have to the best of your ability before moving on to the next section.

Be sure to emphasize the importance of filtering the data within the line chart. Without picking specific students, the chart is overcrowded and difficult to read. Sometimes, as in cases like this, less data on the chart is better than more.

  * Note that Excel will assume data series are arranged by columns. Since we want to visualize the data series by rows, students will need to select "Switch Row/Column" from the Chart Design menu on the line graph.

---

### 6. Instructor Do: Scatter Plots and Trend Lines (10 min)

**Corresponding Activity:** [04-Ins_ScatterPlot](Activities/04-Ins_ScatterPlot)

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Explain that a scatter plot is a scattered collection of data points on a graph, and it is extremely useful when checking for relationships between two variables.

  * Point out that both line plots and scatter plots visualize the relationship between two variables, but they serve different purposes. Line plots are used to visualize a continuous variable, such as time or temperature, while scatter plots are used to compare independent measurements.

  * Explain that the main purpose of a scatter plot is to visualize trends or clusters in the data.

  * Explain that scatter plots are one of the most commonly used plots because we can visualize large datasets without the visualization feeling too busy.

Once again, the TAs should send out images of each step for both operating systems. Therefore, everyone should be able to follow along using their computers.

Open [ScatterPlot.xlsx](Activities/04-Ins_ScatterPlot/Solved/ScatterPlot.xlsx) in Excel, navigate into the "Normal Trend" worksheet, and demonstrate to students how we can use a scatter plot to compare an individual's salary to the price of their car.

**PC steps**

  * Adding a trend line to a chart is a quick process. Click the plus symbol to the right of your selected chart, then, under “Chart Elements”, select the "Trendline" option, as in the following image:

    ![PC Trend line](Images/PC_TrendLine.png)

**Mac steps**

  * Click "Add Chart Element" on the left side of the ribbon, then navigate to "Trendline" in the dropdown, and select the trend line that best fits our data, as in the following image:

    ![Mac Trend line](Images/mac_trendline.png)

Our original scatter plot showed the most common form of trend line, the straight line, but other types of trend lines may be more fitting for some datasets.

  * Navigate to the second sheet of the Excel workbook, named “Power Trend,” and demonstrate to your students how the _y_ variable increases exponentially in relation to the _x_ variable. Due to this relationship, the "Power" trend line would fit this dataset better than a straight line.

    * **PC steps**

      * To change the type of trend line, double-click on a chart's trend line, and then select an available option, as in the following image:

        ![PC Format Trendline](Images/PC_FormatTrend.PNG)

    * **Mac steps**

      * Click "Add Chart Element" on the left side of the ribbon, then navigate to "Trendline". This time, select "More Trendline Options" to bring up the "Format Trendline" menu.

      * Select the "Power" option, as in the following image:

        ![Mac Power line](Images/mac_power.png)

Navigate into the third sheet of the Excel workbook, named Exponential Trend, and show your students how this dataset's second value increases exponentially based on the row it is contained within. This means that an "Exponential" trend line would fit this data best.

Configuring the axes themselves is another way to modify charts based on the data. For example, if our data increases exponentially, then we may want to create a chart with axes that also increase exponentially.

  * We can adjust axis formats by double-clicking on an axis and then changing the bounds, units, and the methods through which the axes are displayed.

  * Steps for adjusting axis formats are captured in the following image:

    ![Mac Axis Options](Images/mac_axis_options.png)

  * Be sure to mention that although axis editing allows for more customization, it can also be used to make charts misleading. For example, if we used larger units on a dataset whose values are relatively low, we could make it look as if the correlation between two variables was smaller than it really is.

Students may be wondering how to reverse the _x_ and _y_ axes of their charts. To do this, make sure the chart is selected, and then click “Select Data” from the “Chart Design” tab on the ribbon. In the “Select Data Source” window, select the data series.

  * On a Mac, the “X Values” and “Y Values” properties are to the right.

  * On a PC, click “Edit”. You will see a new “Edit Series” window with “Series X values” and “Series Y values”

  * These will contain selection formulas for the respective ranges. Switch the formulas by copying and pasting to switch the axes of the scatter plot.

Answer whatever questions your students may have before moving on to the next activity.

---

### 7. Partners Do: St. Louis, MO Home Sales (10 min)

**Corresponding Activity:** [05-Par_HomeSales-ScatterPlots](Activities/05-Par_HomeSales-ScatterPlots)

In this activity, students will work in pairs to create a series of scatter plots that compare home prices against home attributes like square footage, number of bedrooms, and number of bathrooms.

You may choose to open up the slideshow and step through the next few slides to accompany this activity.

**File:** [home_sales.xlsx](Activities/05-Par_HomeSales-ScatterPlots/Unsolved/home_sales.xlsx)

**Instructions:** [README.md](Activities/05-Par_HomeSales-ScatterPlots/README.md)

---

### 8. Review: St. Louis, MO Home Sales (5 min)

Open and send out [home_sales_solution.xlsx](Activities/05-Par_HomeSales-ScatterPlots/Solved/home_sales_solution.xlsx) to your students. Be sure to answer any questions to the best of your ability before moving on to the next section.

Point out to your class how all of these charts use linear trend lines. Discuss with your students why this might be the case, and collect a few of their answers before moving on to the next activity.

---

### 9. Everyone Do: The Need to Filter (10 min)

**Corresponding Activity:** [06-Evr_WalrusGroup-Filter](Activities/06-Evr_WalrusGroup-Filter)

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Point out that in the previous activity, the home sales dataset contained more data than we actually needed for our analysis.

  * Provide an example: the dataset contained variables such as "Publisher", which we could theoretically use to look into the sales for specific companies.

  * Explain that the easiest way to look at a subset of data in Excel is to use the built-in filter functionality. Excel can filter data in a spreadsheet and make a chart from the filtered subset of data.

Now, send out the [walrus_group.xlsx](Activities/06-Evr_WalrusGroup-Filter/Unsolved/walrus_group.xlsx) activity notebook to the class. Guide the students through this activity, pausing frequently to allow them to catch up.

Tell the students that this is real data from the U.S. Geological Survey studying walruses hauled out on ice floes in Alaska.

Select the first row of data on the sheet, then, in the “Editing” group of the “Home” tab, click the "Sort & Filter" button. Next, select "Filter" from the menu that pops up.

  * Each column should now have an arrow button in the header cell. By clicking these arrows, we can choose which rows we would like to filter out of our chart based on the values that are contained in that column.

  * For example, in the "Ice Form" column, if we select "Ice Cake," then the sheet will display all the rows with a value of "Ice Cake".

  * We can then create charts using only the data that remains. So, if we wanted to create a chart that only takes into account the group sizes observed on "Ice Cake" ice floes, we could now do so.

  * It is very important to note that whatever charts we create using filters will be modified if we change the filtering options again. To preserve your filtered charts, copy and paste them to an external program like MS Paint or Word.

Adjust the sheet's filtering options with your students for a bit before answering any questions to the best of your ability.

Then, tell students that another way to create charts from filtered data is to create a "Pivot Chart".

  * **PC steps**

    * Pivot charts operate in much the same way as pivot tables. They allow users to aggregate data of similar types and then create visualizations for them.

    * To create a pivot chart, navigate into the “Charts” group of the “Insert” tab, and select "Pivot Chart" from the options available, as in the following image. Then, set up the pivot table that you want to visualize as a pivot chart.

      ![PC Pivot Chart](Images/PC_PivotChart.png)

  * **Mac steps**

    * **NOTE:** There is an issue with some versions of Excel 2016 for Mac. If you find that a student has this problem, make sure they update their Excel to a later version: it works on updated versions, contrary to what students may read in unverified Google search results!

    * First, create a pivot table using “Ice Floe” as our rows value and “GroupSize" and "DistanceToGroup" as values.

    * Click the _**i**_ next to the values, and switch to **Max** to create our pivot table, as in the following image:

      ![Mac pivot](Images/mac_pivot.png)

    * Find "Insert" on the ribbon, and add any recommended chart to create a Pivot Chart.

    * Now, when you play around with the filters in our pivot table, the chart will adjust.

Data Source: Jay, C. V., Quakenbush, L. T., Citta, J. J., Fischbach, A. S. and Battaile, B. C., 2020, Sex and Age Composition of Walrus Groups Hauled Out on Ice Floes in the Bering and Chukchi Seas, 2013-2015: U.S. Geological Survey data release, [https://doi.org/10.5066/F79K4894](https://doi.org/10.5066/F79K4894)

---

### 10. Partners Do: Filter Home Sales (15 min)

**Corresponding Activity:** [07-Par_FilterHomeSales](Activities/07-Par_FilterHomeSales)

Now that we know how to apply filters to a spreadsheet and create charts based on filtered datasets, let’s create a few charts that compare the sales of homes in St. Louis, MO.

You may choose to open up the slideshow and step through the next few slides to accompany this activity.

**File:** [home_sales_filtered.xlsx](Activities/07-Par_FilterHomeSales/Unsolved/home_sales_filtered.xlsx)

**Instructions:** [README.md](Activities/07-Par_FilterHomeSales/README.md)

---

### 11. Review: Filter Home Sales (5 min)

Open and send out [home_sales_filtered_solution.xlsx](Activities/07-Par_FilterHomeSales/Solved/home_sales_filtered_solution.xlsx) to your students. Be sure to answer any questions to the best of your ability before moving on to the next section.

Explain that for the filtered chart, we first select all the data and create a pivot table.

  * Set the Filter to "Waterfront".

  * Set the row as "date_built".

  * Set the values as "Price".

Finally, set the Waterfront value to whatever you want, then highlight the year and sales columns and create a line graph.

As your students may have noticed during this activity, the charts they created changed whenever they altered their filters. Reiterate that they should save charts externally to avoid losing their work.

Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

---

### 12. BREAK (15 min)

---

### 13. Instructor Do: Variance, Standard Deviation, and Z-Score (20 min)

**Corresponding Activity:** [08-Ins_Variance-SD-Zscore](Activities/08-Ins_Variance-SD-Zscore)

Welcome the students back from break. Explain that for the remainder of class, we will focus on statistics.

Explain that these next activities will introduce statistical topics that may be new to most people.

Reassure students that we will be revisiting these topics throughout the curriculum, so it is OK if they feel they need more practice at first.

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Remind students that in the previous class, we discussed the measures of central tendency, which are used to describe the center of a dataset.

  * Explain that today, we will discuss the **summary statistics** that are used to describe the variability of a dataset.

  * Explain that in statistics, **variance**, **standard deviation**, and **z-score** are the **summary statistics** used to describe the variability in data.

  * Explain that **variance** is an overall description of how far values in the dataset are from the mean. In other words, **variance** describes how much variation exists within the data.

  * Share the equation for variance with the students, as captured in the following image:

  ![equation for variance](Images/VarianceEquation.png)

  * Assure students that knowing how to manually calculate variance is not critical for this course. Almost all analytical tools and programming languages have functions that can calculate variance for us.

  * Explain that the most important takeaway from the equation is that the variance calculation considers the distance of each value in the dataset from the center of the dataset.

  * Point out that it does not matter if a value is above or below the mean of the dataset. The difference from the mean is squared, so the **variance** will always be positive.

Open [Variance-SD-Zscore.xlsx](Activities/08-Ins_Variance-SD-Zscore/Solved/Variance-SD-Zscore.xlsx) in Excel.

  * Explain that this dataset contains the monthly average temperatures for Austin, Texas, and San Francisco, California, as captured in the following image:

  ![Example of variance](Images/13-VarianceExample.png)

  * Point out that we can identify from the bar chart that the overall temperature in Austin is hotter than San Francisco.

  * Explain that we can calculate the total variance of temperature for each city using Excel's `VAR.P` function.

  * Point out that the variance of temperature in Austin is much higher than in San Francisco. Therefore, we can quantitatively determine that the overall temperature is less variable in San Francisco than in Austin.

  * Explain that using variance to describe a dataset can be problematic because the units of variance are not the same units that we use to measure the mean&mdash;or the dataset itself.

  * Explain that in the variance equation, the difference between an observation and the mean is in the same unit of measurement; however, squaring it changes the unit of measurement (for example, _meters_ are a different measurement than _square meters_). The number of points in the dataset is a dimensionless quantity, and does not affect the unit of measurement.

  * Explain that in the first example, we would say that the average annual temperature in Austin was 79.6 degrees, with a variance of 149.91. Technically, the units for the variance are “degrees  squared”, but this is confusing and often dropped in practice.

  * Caution that depending on the complexity of the measurement, describing the variability in terms of units squared may be complicated.

You may choose to return to the slideshow, and step through the next few slides to accompany the next section of the activity. Be sure to cover the following talking points:

  * Explain that in statistics, we use the **standard deviation** to interpret how _spread out_ the data is from its mean.

  * Explain that **standard deviation** can be derived by calculating the square root of the variance. As with variance, most analytical tools and programming languages have functions that automatically calculate the **standard deviation**.

  * Point out that by calculating the square root of the variance, the **standard deviation** describes the variability of the data using the same units as the mean&mdash;in this case, degrees.

Introduce the students to the next sheet in the Excel workbook. Explain that this is the same temperature dataset from the previous sheet, except now we’ve also calculated the temperature standard deviation for both cities using the `STDEV.P` function in Excel.

  * Point out that we also manually calculated the standard deviation by taking the square root of the variance; the manual calculations are equal to the Excel calculations, as captured in the following image:

![Example of standard deviation](Images/13-SDExample.png)

  * Explain that under certain circumstances, the standard deviation becomes an even more powerful statistical tool than just describing the variability of the data.

  * Explain that when a dataset is considered **normally distributed**, the standard deviation can be used to describe how many data points are close to the mean.

  * Assure students we will discuss **normal distributions** later in the course, but for now we will use a general rule of thumb: when measurements in a dataset are obtained independently of one another, the data is considered to be normally distributed.

  * Continue explaining that in this case, each temperature reading was independently obtained month to month and region to region. Therefore, we will assume that the data is normally distributed.

  * Explain that when a dataset is normally distributed, the data points follow a **68-95-99.7** rule.

  * Explain that with the **68-95-99.7** rule, roughly 68% of all values in a dataset fall within one standard deviation from the mean (in either direction). Additionally, 95% of the values fall within two standard deviations, and 99.7% of the values fall within three standard deviations.

Introduce the students to the next sheet in the Excel workbook. Explain that in this sheet, we have taken the same average temperature data, we have our calculations for the mean and the standard deviation, and now we’ve added calculations for the boundary values at one standard deviation from the mean in either direction, as captured in the following image:

![Example of normal dist 68 rule](Images/13-Normal68.png)

  * Point out that from the Austin data, six of the twelve months fall within one standard deviation.

  * Point out that from the San Francisco data, eight of the twelve months fall within one standard deviation.

  * Explain that although the 68-95-99.7 rule is not perfect, it helps analysts extrapolate characteristics about a dataset using only summary statistic values.

  * Explain that we have now studied two different statistical values that we can use to describe the overall dataset in terms of distance from the mean.

    * "But what if we wanted to describe a single data point in terms of its distance from the mean?"

You may choose to return to the slideshow and step through the next few slides to accompany the next section of the activity. Be sure to cover the following talking points:

  * Explain that we can calculate a data point's **z-score** to measure its distance from the mean in terms of standard deviations.

  * Share the equation for z-score with the students, as captured in the following image:

  ![equation for z-score](Images/ZScoreEquation.png)

  * Explain to students that not all programming languages and software tools include a function to calculate **z-score**. Therefore, we will be calculating the z-score manually using the standard deviation and the mean of the data.

  * Assure students that we will be sending out the Excel workbook for use as a reference if they ever forget how to calculate the z-score.

  * Explain that the z-score can be positive or negative. If the z-score is negative, the data point is less than the mean; if the z-score is positive, the data point is greater than the mean.

Introduce the students to the final sheet in the workbook. Explain that on this sheet, we now used the mean and standard deviation to calculate the temperature z-scores for each month in both cities, as in the following image:

![Example of z-score](Images/13-ZScoreExample.png)

  * Point out that the z-scores provide an overview of each value in a dataset, so we can easily determine which values are the most extreme relative to the mean.

  * Note that in this example dataset, the months with the most extreme differences in temperature from the mean were January and December in Austin, and January, September, and December in San Francisco.

Send out the [Variance-SD-Zscore.xlsx](Activities/08-Ins_Variance-SD-Zscore/Solved/Variance-SD-Zscore.xlsx) workbook for students to refer to later.

---

### 14. Students Do: Variance, Standard Deviation, and Z-Score Review (10 min)

**Corresponding Activity:** [09-Stu_VarSDZScoreReview](Activities/09-Stu_VarSDZScoreReview)

You may choose to open up the slideshow, and step through the next few slides to accompany this activity.

**File:** [variance_review.xlsx](Activities/09-Stu_VarSDZScoreReview/Unsolved/variance_review.xlsx)

**Instructions:** [README.md](Activities/09-Stu_VarSDZScoreReview/README.md)

---

### 15. Review: Variance, Standard Deviation, and Z-Score (5 min)

Open the solution workbook [variance_review_solution.xlsx](Activities/09-Stu_VarSDZScoreReview/Solved/variance_review_solution.xlsx), and navigate to the second sheet.

The following image captures the solved summary table:

![This is the summary table](Images/16-SummaryTable.png)

  * Point out that we start by naming a new sheet "Summary Table" and copying over the `State` abbreviations.

  * Explain that once we have copied over the team names, we use the `AVERAGE`, `VAR.P` and `STDEV.P` functions to calculate the mean, variance, and standard deviation, respectively.

  * Point out that the cleanest way to calculate these values in Excel is to start typing out the formula on the "Summary Table" sheet and then click on the range of values we want from the raw data sheet.

Demonstrate how to calculate the mean `Death Date Per 100,000` (overall) for `AR` (Arkansas) using the `AVERAGE` function across both sheets, as captured in the following GIF:

![Demo of average](Images/16-CalculateAverage.gif)

  * Explain that we must repeat this process for each state and each Excel function. Note that it can be faster to copy the range in one cell into additional cells when all you need to change is the function.

  * Note that once we have the summary table, we can answer the questions from the activity.

  * Point out that the state with the greatest difference in death rate across all of its counties would be the state with the largest overall `Death Rate Per 100,000` standard deviation—Mississippi.

  * Note that the state with the least variation in female death rate was Oregon, and their average death rate was 267 deaths per 100,000.

Introduce the students to the next sheet in the workbook, which includes columns with the `County`, `Death Rate Per 100,000` and their `Z-Scores`, as in the following image:

![This is the z-score table](Images/16-ZScoreTable.png)

Explain to the students that once we copy over the `County` and `Death Rate Per 100,000` columns, we need to calculate the mean and standard deviation for the state.

Point out to the students when calculating the z-scores, it is important to always report the mean and standard deviation in addition to the calculated values. In this example we placed the mean and standard deviation below the last county's row.

Ask the students how they would interpret the z-scores for Oregon. Ask them what do the z-scores tell us about each county in terms of death rate?

Explain that the county with the largest difference in overall death rate from the mean of the state would be the county with the largest magnitude z-score. This means that we are looking for the largest absolute value of the z-score regardless of whether the z-score is positive or negative.

Explain that the z-score is showing us each county's overall death rate compared to the other counties across the state.

Explain that in this example Curry County had the largest difference in overall death rate from the mean of the state. Therefore, we could say that Curry County is the most impacted by heart disease deaths in Oregon, which could have a greater impact on their healthcare system.

Send out the solution workbook [variance_review_solution.xlsx](Activities/09-Stu_VarSDZScoreReview/Solved/variance_review_solution.xlsx) for students to review later.

Data Source: Centers for Disease Control and Prevention (2018), Heart Disease Mortality Data Among US Adults (35+) by State/Territory and County [https://healthdata.gov/dataset/Heart-Disease-Mortality-Data-Among-US-Adults-35-by/rfd6-zy3v](https://healthdata.gov/dataset/Heart-Disease-Mortality-Data-Among-US-Adults-35-by/rfd6-zy3v)

---

### 16. Instructor Do: Quantiles, Outliers, and Box Plots (15 min)

**Corresponding Activity:** [10-Ins_QuantilesOutliersBoxplots](Activities/10-Ins_QuantilesOutliersBoxplots)

You may choose to open up the slideshow, and step through the next few slides to accompany the beginning of this activity. Be sure to cover the following talking points:

  * Remind students that when we are characterizing a dataset, we need to be careful that our summary statistics don't misrepresent the data.

  * Explain that one of the biggest challenges in statistics is that real-world data is imperfect. Oftentimes, real-world data will contain extreme values that can skew our interpretations, especially when we try to describe the center of a dataset.

  * Explain that one of the simplest methods of describing real-world data is to break up a dataset into smaller segments.

  * Explain that in statistics, we use **quantiles** to describe segments of a dataset.

  * Explain that **quantiles** are the "cut points" that separate a sorted dataset into equal-sized fragments.

  * Explain that the two most popular types of **quantiles** are **quartiles** and **percentiles**.

  * Explain that **quartiles** divide a dataset into four equal parts, and **percentiles** divide a dataset into 100 equal parts.

Send out the activity workbook [quantiles_outliers_boxplots.xlsx](Activities/10-Ins_QuantilesOutliersBoxplots/Solved/quantiles_outliers_boxplots.xlsx), and introduce the students to the first sheet. Explain that this dataset is a sorted list of 11 values ranging between 10 and 100, and quartiles have been calculated, as in the following image:

![The first quartile examples](Images/10-QuartileExample1.png)

  * Ask the students if they remember what we call the center of a sorted dataset.

  * If no student can recall, remind them that the center of a sorted dataset is known as the median.

  * Explain that the median can also be considered the cut point that divides a dataset into two equal parts. Therefore, the median can also be called the **second quartile** or **Q2**.

  * Point out that the median of this dataset is 55. There are five values below 55 and five values above 55.

  * Explain that the **first quartile** (also known as **Q1**) is the median of the first set of values separated by **Q2**. Alternatively, the **third quartile** (also known as **Q3**) is the median of the second set of values separated by **Q2**.

  * Point out that this is a simplified example; it’s easy to identify the cut points in order to make four equally sized groups of data.

Introduce the students to the next sheet in the workbook. Explain that this data is a sorted list of car speeds on a residential street, measured in miles per hour. In total, 123 measurements were made, ranging from 22 to 37 mph, as captured in the following image:

![The second quartile examples](Images/10-QuartileExample2.png)

  * Explain that when a dataset is large, it can be difficult to determine where the quartiles are.

  * Note that we can use the `QUARTILE.EXC` function in Excel to calculate the quartile values.

  * Point out that the input to the `QUARTILE.EXC` function is a range of values and the number of the quartile it should calculate.

  * Note that in this dataset, the quartiles divide the data into groups of 34 values, with one group consisting of 35 values.

  * Explain that quartiles allow us to make observations about the dataset without needing to plot the distribution of values.

  * Point out that one observation that we can make is that on average, the cars are driving 30 mph.

  * Point out that another observation we can make is that 50% of the cars were driving between 25 and 34 mph.

  * Explain that because quartiles divide the data into 4 equal segments, the range between Q1 and Q3 covers roughly 50% of all data points.

  * Note that this range is known as the **interquartile range**, or **IQR** for short. In statistics, the **interquartile range** is used to help identify the most trustworthy measurements in a dataset. The **interquartile range** is calculated by subtracting Q1 from Q3.

You may choose to return to the slideshow, and step through the next few slides to accompany the next section of the activity. Be sure to cover the following talking points:

  * Tell students that in data science, we call suspicious data points that are at either extreme of a dataset **potential outliers**.

  * Explain that an **outlier** is a data point that differs from the rest of a dataset.

  * Note that **outliers** can be caused by changes in data collection methods, experimental error, a malfunction of a machine, or any general source of unaccounted variability when generating a dataset.

  * Point out that **outliers** cause a dataset’s distribution to change, which causes issues when we try to characterize a dataset with summary statistics. Therefore, it is critical to identify **potential outliers** in a dataset before moving forward with any analysis.

  * Note that there are two common ways to identify potential outliers in a dataset.

  * Explain that the most common qualitative method to identify potential outliers is the **box and whisker plot**.

  * Tell students that the **box and whisker plot** is also known as a **box plot**, and it shows the distribution of values from a single list.

  * Note that the most common quantitative method to identify potential outliers is the `1.5*IQR` rule.

  * Explain that the `1.5*IQR` rule states that any data point that is 1.5 times the interquartile range lower than Q1 could be a potential outlier. Alternatively, any data point that is 1.5 times the interquartile range higher than Q3 could be a potential outlier.

Introduce the students to the next sheet, which contains a dataset describing car speeds on a two-lane road, as captured in the following image.

![The third quartile examples](Images/10-QuartileExample3.png)

  * Inform the students that with real-world data, it’s common to encounter suspicious data points at the low and high ends of a sorted dataset.

  * Caution students that we have to be careful about how we identify and correct for outliers.

  * Explain that if we remove data points that are not outliers, or if we report data without disclosing that we removed data points, we can be held liable for showing deceptive statistics.

  * Point out that in this example, the lower boundary of the `1.5*IQR` rule is 42.625 mph.

  * Remind the students that if we were to remove potential outlier data, we must report that the value was removed alongside any table or figure generated from the dataset.

Introduce the students to the final worksheet, captured in the follwing image. The worksheet now includes a box and whisker plot in addition to the car speeds, quartile values, IQR, and the boundaries for the `1.5*IQR` rule.

![The fourth quartile examples](Images/10-QuartileExample4.png)

  * Note that a **box plot** is a powerful visualization that provides a number of summary statistics at a glance.

  * Inform students that most analytical tools and programming languages have methods to build a **box plot**, and most **box plots** use the same shapes and styles to convey summary statistics.

  * Point out to the students the chart next to the car speeds column.

  * Explain that the box in a box plot is the interquartile range, and the line in the middle of the box is the median of the dataset.

  * Explain that a box plot will sometimes include an `X` or triangle in the middle of the box; this symbol indicates the mean of the dataset.

  * Explain that the lines, or whiskers, protruding from the box indicate the largest and smallest data points inside the `1.5*IQR` rule.

  * Explain that the data points plotted past the whiskers indicate the potential outliers.

  * Explain that we compare the data points on the box plot to the extreme values of the dataset to determine which data points are the potential outliers.

    * In Excel, you can hover over any data point to determine what value is being represented.

Point out that in this example, we are looking at a vertical box plot. Explain that just like bar plots can be displayed with vertical or horizontal bars, box plots can also be displayed vertically or horizontally.

Send out the activity workbook [quantiles_outliers_boxplots.xlsx](Activities/10-Ins_QuantilesOutliersBoxplots/Solved/quantiles_outliers_boxplots.xlsx) for students to refer to later.

Data Source: Data generated by Mockaroo, LLC. (2021) Realistic Data Generator. [https://www.mockaroo.com/](https://mockaroo.com/). Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

---

### 17. Students Do: Cereal Outliers (10 min)

**Corresponding Activity:** [11-Stu_CerealOutliers](Activities/11-Stu_CerealOutliers)

You may choose to open up the slideshow, and step through the next few slides to accompany this activity.

**File:** [outliers_activity.xlsx](Activities/11-Stu_CerealOutliers/Unsolved/outliers_activity.xlsx)

**Instructions:** [README.md](Activities/11-Stu_CerealOutliers/README.md)

---

### 18. Review: Cereal Outliers (5 min)

Open up the solution workbook [outliers_activity_solution.xlsx](Activities/11-Stu_CerealOutliers/Solved/outliers_activity_solution.xlsx), and introduce the students to the first sheet.

Point out that this dataset contains ~70 values that jump around between 1 and 100.

  * That much variability is indicative of potential outliers in the dataset.

Guide students through the contents of the next sheet in the workbook, captured in the following image; then, cover the steps for this activity.

![The Outlier Testing sheet](Images/12-OutlierReview1.png)

  * Explain that the first step in this activity was to create a summary statistics table.

  * Explain that once we calculated the first and third quartiles, we could calculate the `1.5*IQR` boundary rule.

  * Remind the students that the lower boundary of the `1.5*IQR` rule is `Q1-(1.5*IQR)`, while the upper boundary is `Q3+(1.5*IQR)`.

  * Point out that the lower boundary extends beyond the minimum-rating value. Therefore, all values lower than the median are within the boundary.

  * Explain that once we have the upper boundary, we can use this value to filter the raw data.

  * Demonstrate to students how to copy the upper bound to create a "greater than" filter.

    * We can create this filter by copying the upper-bound value into the filter box and selecting "Greater than."

  * Explain that once we have the filtered list of potential outliers, we copy over the product name and rating to our worksheet.

  * Explain that the final step is to create a box and whisker plot using all the rating values.

  * Explain that when there are large extremes in the data, the box and whisker plot gets compacted.

  * Point out to the students that the median is 40.4, the IQR is 18.51, and the upper boundary is 78.98. However, the largest value is nearly 94.

  * Explain that this compacted box plot is typically observed when potential outliers are orders of magnitude larger than the median.

  * Explain that box plots are great at indicating when there are outliers in a dataset, but they are not helpful when determining how many potential outliers exist.

  * Explain that this is why many data scientists will start by plotting the data in a box and whisker and then reflex to quantifying the `1.5*IQR` boundaries if any potential outlier data points exist.

Send out the solution workbook [outliers_activity_solution.xlsx](Activities/11-Stu_CerealOutliers/Solved/outliers_activity_solution.xlsx).

Data Source: StatLib 1993 Graphics Exposition [http://lib.stat.cmu.edu/datasets/1993.expo/](http://lib.stat.cmu.edu/datasets/1993.expo/)

---

### 19. Instructor Do: End Class

Before finishing up for the day, take a few minutes to ask the students if they have any final questions and provide answers.

  * If students are reluctant to ask questions, use the the next few slides in the slideshow as prompts. Use the fist to five technique (fist meaning not comfortable at all, five meaning they feel like they have mastered the topic) to survey students on their comfort with plotting figures and calculating summary statistics in Excel.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
