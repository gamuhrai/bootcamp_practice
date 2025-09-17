# 11.2 Web Scraping with CSS Selectors

## Overview

Today's lesson will introduce students to scraping websites by using CSS selectors.

### Class Objectives

By the end of this lesson, the students will be able to:

* Use CSS selectors to scrape targeted elements.

* Use Chrome DevTools to identify elements and their CSS selectors.


## Instructor Prep

<details>
    <summary><strong>Instructor Notes</strong></summary>

* The objective of today's class is to go deeper into web scraping by using CSS selectors to target elements in addition to HTML tags.

* You will also demonstrate how to use Chrome DevTools in order to explore websites and identify elements for scraping.

* Have your TAs refer to the [Time Tracker](TimeTracker.xlsx) to stay on track.

* If you have issues with any of today's activities, you may report them [here](https://forms.gle/NL2akU5pSa5JMHi27).


</details>

- - -

# Class Activities

## 1. CSS Scraping

| Activity Time:       0:50 |  Elapsed Time:      0:50  |
|---------------------------|---------------------------|

<details>
    <summary><strong>📣 1.1 Instructor Do: Welcome Class (10 min)</strong></summary>

* Open the [slideshow](https://docs.google.com/presentation/d/1GZ0ZzQYO68_a4k4Gdhzq0Q7YDvIagCOVhO5yE18ewv0/edit?usp=sharing), and use the first few slides to welcome the class and cover the following points:

* Start by asking students to recall what they learned in the previous class. Answer any questions they have about those topics and activities.

* Explain that today's activities will build on the topics from the previous lesson, so it's important that they are comfortable with HTML, CSS, and Beautiful Soup.

* Facilitate a brief review session by calling on students to answer questions about the material from Day 1, such as the following:

    * What is the difference between HTML and CSS?

    * What are some examples of HTML elements?

    * What is an HTML tag?

    * What is a CSS selector?

    * What is Beautiful Soup used for?

    * What does the Beautiful Soup `find` method return?

* Now introduce today's objectives. Explain to students that today they will work on more advanced web scraping activities by using CSS selectors to identify elements to target.

* In addition, they will learn how to use Chrome DevTools to explore the elements within websites.

* Ask the class the following questions and call on students for answers:

    * **Q:** How are you feeling about your progress so far?

    * **A:** We are starting to build your skillset. It’s also okay to feel overwhelmed as long as you don’t give up.

    * **Q:** How comfortable do you feel with this topic?

    * **A:** Let's do "fist to five" together. If you are not feeling confident, hold up a fist (0). If you feel very confident, hold up an open hand (5).

  </details>

 <details>
  <summary><strong>📣 1.2 Instructor Do: CSS Scraping (15 min)</strong></summary>

* Explain that in this example, we will use Beautiful Soup and CSS identifiers to scrape information from a web page. Open [css_solved.ipynb](Activities/01-Ins_CSS_Identifiers/Solved/css_solved.ipynb) in Jupyter Notebook and send out the file to students so they can follow along.

* Explain that we first import Beautiful Soup, then import the HTML document as a Python string.

  ```python
  from bs4 import BeautifulSoup

  html = """
  <!DOCTYPE html>
  <html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>My First CSS Adventure</title>

      <style>
        #cities {
            color: purple;
        }

        .meat {
            color: brown;
        }

        .vegetarian {
            color: green;
        }

        #favorite {
            color: orange;
        }
    </style>

  </head>

  ...

  """
  ```

* Explain that the next task is to parse the code with Beautiful Soup.

  ```python
  soup = BeautifulSoup(html, 'html.parser')
  ```

* Explain that, to retrieve the ordered list with an `id` of `cities`,  we use the `find` method and use its `id` as an argument.

  * The HTML code of the ordered list is returned.

    ```python
    cities = soup.find('ol', id='cities')
    ```

    ```html
    <ol id="cities">
    <li>New York</li>
    <li>Paris</li>
    <li>Seoul</li>
    <li>Prague</li>
    </ol>
    ```

* Next, explain that the `find_all` method can be used to list all cities in this ordered list.

  * Since each list item contains the name of a city, `'li'` is used as the argument of the `find_all` method.

  * A `for` loop can then be used to print all cities.

  * The `text` attribute can be used to print only the text of each city, omitting its HTML tags.

  * Alternatively to a `for` loop, a list comprehension can also be used to return a list of city names.

* Take a moment to emphasize that whereas the `find` method returns only the first matching result, the `find_all` method returns all matching results.


  ```python
  city_list_items = cities.find_all('li')

  for city in city_list_items:
      print(city)

  for city in city_list_items:
      print(city.text)

  [city.text for city in city_list_items]
  ```

* Explain that, in the next example, all list items are returned.

  ```python
  all_items = soup.find_all('li')

  [item for item in all_items]

  [item.text for item in all_items]
  ```

* Next, show how to retrieve elements by class. Here, the goal is to retrieve all items that belong to the `meat` class.

  * Again, the `find_all` method is used.

  * The `class_` argument contains an underscore because `class` is a reserved keyword in Python.

  * A list comprehension is used here, but a `for` loop can also be used.

    ```python
    meat_items = soup.find_all('li', class_='meat')

    [meat.text for meat in meat_items]
    ```

* Finally, do the same for the `vegetarian` class.

  ```python
  vegetarian_items = soup.find_all('li', class_='vegetarian')

  [v.text for v in vegetarian_items]
  ```

* Ask the students if they have any questions before moving onto the next activity.

</details>

<details>

 <summary><strong>✏️ 1.3 Students Do: CSS Case Study (15 min)</strong></summary>


* In this activity, the students will use CSS selectors to collect data from HTML code.

* Use the slides to present this activity to the class.

* Send out the following instructions and starter file:

  * **Instructions:** [README.md](Activities/02-Stu_CSS_Case_Study/README.md)

  * **File:** [css_case_study_unsolved.ipynb](Activities/02-Stu_CSS_Case_Study/Unsolved/css_case_study_unsolved.ipynb)

</details>

<details>

  <summary><strong>⭐  1.4 Review: CSS Case Study (10 min)</strong></summary>

* Open [css_case_study_solved.ipynb](Activities/02-Stu_CSS_Case_Study/Solved/css_case_study_solved.ipynb) in Jupyter Notebook, send the file to students, and go over the code with the class.

* During the review, emphasize the high-level view of the steps we took. We used the CSS selectors `id` and `class` to scrape and extract text from the HTML code.

</details>

- - -

## 2. Pandas Scrape

| Activity Time:       0:30 |  Elapsed Time:      1:20  |
|---------------------------|---------------------------|

<details>
  <summary><strong>✏️ 2.1 Students Do: Pandas Scrape (20 min)</strong></summary>

* In this activity, students will use Beautiful Soup to extract information from a simplified version of the official Pandas website.

* Open [css.html](Activities/03-Stu_Pandas_CSS_Scrape/Resources/css.html) in a browser and explain that students will use Beautiful Soup to scrape information on this page.

* Send out the following HTML file and instructions:

  * **File:** [css.html](Activities/03-Stu_Pandas_CSS_Scrape/Resources/css.html)

  * **Instructions:** [README.md](Activities/03-Stu_Pandas_CSS_Scrape/README.md)

* Answer any questions before breaking the students out into groups.

* Divide students into groups of 3-5. They should work on the solution by themselves, but they can talk to others in their group to get tips.

* Let students know that they may be asked to share and walk through their work at the end of the activity.

</details>

<details>
  <summary><strong>⭐ 2.2 Review Pandas Scrape (10 min)</strong></summary>

* Open [css.html](Activities/03-Stu_Pandas_CSS_Scrape/Resources/css.html) in a browser to show students what it looks like.

* Open [pandas_scrape_solved.ipynb](Activities/03-Stu_Pandas_CSS_Scrape/Solved/pandas_scrape_solved.ipynb) in Jupyter Notebook and send out the file to students. Walk your students through the code.

* Explain that, once again, we import the Beautiful Soup library and import the HTML code as a Python string. We subsequently parse the HTML code with Beautiful Soup.

* Next, explain that we use the `find_all` method to search for all `h3` elements.

  * The result returns a list of `h3` elements, including the tags.

  ```python
  all_titles = soup.find_all('h3')
  all_titles
  ```

  ```text
  [<h3 class="section-header">Getting Started</h3>,
  <h3 class="section-header">Documentation</h3>,
  <h3 class="section-header">The pandas Community</h3>]
  ```

* Explain that, in order to return only the text of the h3-level headers, we can use the `text` property.

  * This time, a list of the headers is returned.

  ```python
  titles = [title.text for title in all_titles]
  ```

  ```text
  ['Getting Started', 'Documentation', 'The pandas Community']
  ```

* Explain that to retrieve the HTML code for only the "Getting Started" section, we can use the `find` method to locate the `div` by its `id`.

  * The result is assigned the variable `start_section`.

  ```python
  start_section = soup.find('div', id="start")
  ```

* Explain that we can then further narrow the search if we're interested in finding the first `h3` element of this section.

  ```python
  start_description = start_section.find('h3').text
  ```

* Next, go over how to find all the links in the section.

  * The `find_all` method is called to find all `a` elements (links, or "anchors").

  ```python
  start_links = start_section.find_all('a')
  ```

  ```text
  [<a href="https://pandas.pydata.org/getting_started.html">
  <li>Install pandas</li>
  </a>,
  <a href="https://pandas.pydata.org/docs/getting_started/index.html">
  <li>Getting started</li>
  </a>]
  ```

* Explain that the `href` attribute can be used to retrieve the URL of each link.

  ```python
  start_urls = [link['href'] for link in start_links]
  ```

  ```text
  ['https://pandas.pydata.org/getting_started.html',
  'https://pandas.pydata.org/docs/getting_started/index.html']
  ```

* Likewise, explain that the same strategy can be used to retrieve the URLs of all the links on the page.

  ```python
  all_urls = [link['href'] for link in soup.find_all('a')]
  ```

* If there is time, go over the bonus solution.

  * The task is to assemble the scraped data into a usable data structure.

  * Here, we use a dictionary to hold the data.

* Explain that we begin with an empty dictionary. We will fill this with the scraped data.

  ```python
  pandas_info_dict = {}
  ```

* Next, explain the iterative process.

  * All the `div` elements are retrieved with `find_all` method.

  * A `for` loop is used to retrieve the title of each div. This becomes the key of the dictionary item for that section.

  * In the `for` loop, all links are retrieved with `find_all('a')`. The URL is retrieved with the `href` attribute of each link. The list of URLs becomes the value of the dictionary item for that section.

  ```python
  all_divs = soup.find_all('div')
  for div in all_divs:
      div_description = div.find('h3').text
      urls = [link['href'] for link in div.find_all('a')]
      pandas_info_dict[div_description] = urls
  ```

* Ask the students if they have any questions before taking them into the break.

</details>


- - -

## Break

| Activity Time:       0:15 |  Elapsed Time:      1:35  |
|---------------------------|---------------------------|

- - -


## 3. Dev Tools

| Activity Time:       0:15 |  Elapsed Time:      1:50  |
|---------------------------|---------------------------|


<details>
  <summary><strong>📣  3.1 Instructor Do: DevTools (15 min)</strong></summary>

* In this activity, you will demonstrate how to use Chrome DevTools in order to identify HTML elements and their CSS selectors.

* Open [devtools.ipynb](Activities/04-Ins_DevTools/Solved/devtools.ipynb) in Jupyter Notebook and send the file out to students. This will be demonstrated to the students later in the activity.

* Explain that up to this point, we have scraped pages by pasting HTML code into Jupyter Notebook and examining the code.

  * However, this is not a very practical approach: many pages have very long code and some are generated dynamically.

  * We need a more efficient way of honing in on target elements.

* Explain that Chrome's DevTools is handy in examining web pages and identifying the CSS selectors we're interested in.

* Share that, at this point, we'll begin scraping real websites by using Chrome's DevTools in tandem with Splinter, an automated browsing package.

* Explain that this activity will focus on DevTools, with only basic usage of Splinter. The next lesson will go deeper into Splinter.

* Have your students navigate to Stack Overflow's [Python questions page](https://stackoverflow.com/questions/tagged/python?sort=MostVotes&edited=true).

* Have students open up DevTools.

  * The keyboard shortcuts are: Option + Command ⌘ + i (on Macs), or Shift + CTRL + i (on Windows)

* DevTools may be docked below the webpage, to the left or right of it, or in a separate window, depending on personal preference. To consider accessibility needs, the students may wish to select their DevTools dock location. Demonstrate this by selecting the 3 vertical dots in the upper right corner of the DevTools dock, beside the exit button, and pointing out the "Dock side" menu item, as captured in the following image:

  ![Click on the 3 vertical dots menu and view the "Dock side" menu item.](Images/devtools00.png)

* Make sure the `Elements` pane is selected. Click on the square containing an arrow, and explain that it allows us to inspect any element on the page.

  ![Click on the inspect button.](Images/devtools01.png)

* While the inspect element button (the square with the arrow) is blue, click on the header text at the top of the page to inspect its code.

  ![Inspect an element.](Images/devtools02.png)

* Explain the following:

  * The header is an `<h1>` element.

  * It has several classes that are separated by space, e.g. `fs-headline1`.

* Show that we can directly apply a CSS styling to the element. In the `Styles` tab (on the right side of the DevTools dock if DevTools is below the webpage, otherwise at the bottom of the dock), type `color: blue` in the `element.style` brace.

  * This changes the font color of the header.

    ![Change color with CSS](Images/devtools03.png)

* Next, ask your students the steps they would take to scrape the most commonly asked Python questions from this page. After eliciting responses, explain that it might go something like the following:

  * Use DevTools to identify the CSS selector of a question.

  * Use BeautifulSoup's `find_all` method and the `class_` (emphasis on the underscore) argument to find all instances of the class on the page.

  * Iterate through the results and extract the text with the `text` attribute.

* Ask a student to inspect a question and identify its CSS `class`.

  * Here, we are inspecting only the summary question at the top of each box.

![Inspecting a question](Images/devtools05.png)

* Explain the following:

  * Inspecting a question reveals that it belongs to the `s-link` class.

  * Changing its color to green confirms that we identified the correct class.

  * Styling an element with CSS is not necessary, but used here for illustrative purposes.

* Next, open the Jupyter Notebook and walk through the code. Explain that we must first import the necessary modules and set up the automated browser.

  * Splinter's automated browser will visit the website and return the HTML code.

    ```python
    from splinter import Browser
    from bs4 import BeautifulSoup

    browser = Browser('chrome')
    ```

* Explain that, in the next cells, the automated browser visits the web site, it extracts the HTML code, and that Beautiful Soup parses the HTML.

  ```python
  url = "https://stackoverflow.com/questions/tagged/python?sort=MostVotes&edited=true"

  browser.visit(url)

  html = browser.html

  soup = BeautifulSoup(html, 'html.parser')
  ```

* In the next lines of code, explain that the `find` method is used to find the `h1`-level header text.

  * The `strip` method removes whitespace (here, the `\n` used to represent a newline) from strings.

    ```python
    soup.find('h1').text
    '\nQuestions tagged [python]        ' # result

    soup.find('h1').text.strip()
    'Questions tagged [python]' # result
    ```

* In the next line, explain that the `class` we identified earlier for a question is used to retrieve all questions from the page.

  * The `find_all` method is used to find all anchor elements (`a`).

  * The `s-link` is supplied as an argument to `class_`.

  * The code returns a list of all links with this class.

    ```python
    questions = soup.find_all('a', class_='s-link')
    ```

* Show what's being stored in the list of questions. Point out that some of the results look different than what we would expect based on what we saw in DevTools.

* Explore this by running the following code to show the class of each list element:

  ```python
  for question in questions:
      print(question['class'])
  ```

* The output shows that the results that looked different actually have multiple classes. We can remove these by running the following code:

  ```python
  questions = [question for question in questions if question['class']==['s-link']]
  ```

* Explain that, now that we have our list of questions, we can further refine the results by supplying attributes.

  * The code returns the `href` attribute, or the URL, to the first question.

  * It then returns the `text` attribute.

    ```python
    questions[0]['href']

    questions[0].text
    ```

* Finally, explain that the automated browser can be closed with the `quit` method.

  ```python
  browser.quit()
  ```

* Summarize the activity:

  * When scraping, DevTools can be used to quickly inspect an element.

  * Identifying an element's CSS selector will be especially useful in scraping, as we'll see in the next activity.

* Ask the students if they have any questions before moving on to the next activity.

</details>


- - -

## 4. Stack Scrape

| Activity Time:       0:30 |  Elapsed Time:      2:20  |
|---------------------------|---------------------------|

<details>
    <summary><strong>✏️ 4.1 Students Do: Stack Scrape (20 min)</strong></summary>

* In this activity, the students will use Chrome DevTools to identify CSS selectors of Stack Overflow's Python page, then use that information to scrape the page.

* Send out the following file and instructions:

  * **File:** [stack_overflow_unsolved.ipynb](Activities/05-Stu_StackOverflow/Unsolved/stack_overflow_unsolved.ipynb)

  * **Instructions:** [README.md](Activities/05-Stu_StackOverflow/README.md)

* Let the students know that they may be asked to share and walk through their work at the end of the activity.

</details>

<details>
  <summary><strong>⭐ 4.2 Review Stack Scrape (10 min)</strong></summary>

* First go to the Stack Overflow [Python page](https://stackoverflow.com/questions/tagged/python?sort=MostVotes&edited=true).

* Explain that there are, essentially, a number of rectangular boxes on the page, each containing a question.

  * There are also other bits of data, such as the number of votes received, and the number of views.

* Inform students that we will inspect these elements and their CSS selectors with DevTools. Open DevTools. The keyboard shorts are: Option + Command ⌘ + i (on Macs), or Shift + CTRL + i (on Windows).

* Make sure the `Elements` pane is selected, and click on the square button with an arrow to its left to inspect a question.

  * The area that contains a question is a `<div>` with a class of `s-post-summary js-post-summary`.

  ![Use DevTools to find the question element](Images/stack01.png)

* Next, use DevTools to inspect for the number of votes.

  * This time, it's two `<span>` elements, each with a single class: `s-post-summary--stats-item-number` for the number and `s-post-summary--stats-item-unit` for the text "votes".

  ![Find the votes element](Images/stack02.png)

* Next, use DevTools to inspect the excerpt.

  * The excerpt is contained in a `<div>` with a class of `s-post-summary--content-excerpt`.

  ![Find the excerpt element](Images/stack03.png)

* Explain that these pieces of information are used to scrape data.

* Open [stack_overflow_solved.ipynb](Activities/05-Stu_StackOverflow/Solved/stack_overflow_solved.ipynb) in Jupyter Notebook and send out the file to students.

* Explain that the first part of the code sets up an automated browser to visit the website and extract its HTML code.

  ```python
  from splinter import Browser
  from bs4 import BeautifulSoup

  browser = Browser('chrome')

  url = "https://stackoverflow.com/questions/tagged/python?sort=MostVotes&edited=true"
  browser.visit(url)
  html = browser.html
  soup = BeautifulSoup(html, 'html.parser')
  ```

* Explain that all the `<div>` elements containing a question are scraped with Beautiful Soup's `find_all` method.

  * From each `<div>` element, the summary question, the number of votes, and the excerpt will be extracted.

    ```python
    question_divs = soup.find_all('div', class_="s-post-summary js-post-summary")
    ```

* Explain that an empty list is created to hold the scraped data.

  ```python
  question_list = []
  ```

* Go through the details of the `for` loop.

  * For each `<div>` element that contains a question, the elements for summary, votes, and excerpt are returned with `find`.

  * Then the text is pulled by appending the `text` attribute.

  * In each iteration of the `for` loop, an empty dictionary is created to hold the information for each question.

  * The dictionary entry is created with "summary", "votes", and "excerpt" as keys, and the corresponding text entries as their values.

  * The dictionary is appended to the `question_list` list created earlier.

  ```python
  # Create a for loop to extract the information
  for question in question_divs:
      # Extract the summary
      summary = question.find("a", class_="s-link").text

      # Extract the votes
      votes = question.find("span", class_="s-post-summary--stats-item-number").text

      # Extract the excerpt
      excerpt = question.find("div", class_="s-post-summary--content-excerpt").text.strip()

      # Create a dictionary to store the information
      question_dict = {"summary": summary,
                       "votes": int(votes),
                       "excerpt": excerpt}
      # Append the dictionary to the question list
      question_list.append(question_dict)
  ```

* Explain that the votes are string values. To analyze them, they can be converted into integers.

* Finally, explain that we close the browser with the following code.

  ```python
  browser.quit()
  ```

* As you conclude the review, summarize the key points from the activity.

  * DevTools was used to inspect element names and their CSS selectors.

  * To capture the multiple rectangular boxes containing questions, the `find_all` method was used.

  * A `for` loop was used to iterate through each box and find the various components (votes, summary, excerpt).

  * The scraped data was organized into a list of dictionaries.

* Ask the students if they have any questions before moving on to the next activity.

* Reference: [Stack Overflow](https://stackoverflow.com) [user contributions](https://stackoverflow.com/help/licensing) are licensed under a [CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0/) license.

</details>

- - -


## 5. Mars News Scrape

| Activity Time:       0:30 |  Elapsed Time:      2:50  |
|---------------------------|---------------------------|

<details>
    <summary><strong>✏️ 5.1 Students Do: Mars News Scrape (20 min)</strong></summary>

* In this activity, students will get additional web scraping practice by collecting data from a website based on [NASA's Mars News](https://static.bc-edx.com/data/web/mars_news/index.html).

* This is also the website that students will be scraping as part of their challenge. Let them know this as you introduce the activity.

* Send out the following file and instructions:

  * **File:** [mars_news.ipynb](Activities/06-Stu_Scraping_Mars_News/Unsolved/mars_news_unsolved.ipynb)

  * **Instructions:** [README.md](Activities/06-Stu_Scraping_Mars_News/README.md)

* Let students know that they may be asked to share and walk through their work at the end of the activity.

* References: [The Mars Planet Science website](https://static.bc-edx.com/data/web/mars_news/index.html) is operated by edX Boot Camps LLC for educational purposes only. The news article titles, summaries, and images were scraped from [NASA's Mars News](https://mars.nasa.gov/) website in November 2020. Images are used according to the [JPL Image Use Policy](https://www.jpl.nasa.gov/jpl-image-use-policy), courtesy NASA/JPL-Caltech.

</details>

<details>
  <summary><strong>⭐ 5.2 Everyone Do: Review Mars News Scrape (10 min)</strong></summary>

* Open [mars_news_solved.ipynb](Activities/06-Stu_Scraping_Mars_News/Solved/mars_news_solved.ipynb) in Jupyter Notebook, send the file to students, and go over the code with the class.

* Ask students if they have any questions before moving on.

</details>

- - -

## 6. Review

| Activity Time:       0:10 |  Elapsed Time:      3:00  |
|---------------------------|---------------------------|


<details>
  <summary><strong>📣  6.1 Instructor Do: Review </strong></summary>

* Before ending class, review the skills that were covered today.

  * Using Beautiful Soup to extract information by using CSS selectors in addition to HTML elements.

  * Using Chrome DevTools to explore a website and identify elements associated with CSS selectors.

* Explain to students that in the next class, they will further advance their data collection skills by using automated browsing.

* Answer any questions the students may have.

* Finally, encourage your class to begin the Challenge as soon as possible, if they haven’t already, and to use the Learning Assistants channel and prescheduled Office Hours with their instructional team for help as they progress through their work. If they feel like they need context to understand documentation or instructions throughout the week, this is where they can get it.

</details>

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
