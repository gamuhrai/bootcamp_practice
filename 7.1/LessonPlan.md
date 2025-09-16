# 7.1: Projects and Collaboration with Git

## Overview

Today's lesson plan introduces the students to the requirements for Project 1 as well as the basics of collaboration with Git.

## Class Objectives

By the end of this lesson, the students will be able to:

* Articulate the requirements for Project 1.

* Draw and interpret diagrams of Git branching workflows.

* Create new branches with Git.

* Push local branches to GitHub.

* Delete branches with Git.

## Instructor Prep

<details>
    <summary><strong>Instructor Notes</strong></summary>

* It is highly recommended that you request and evaluate project proposals from the students. Students often struggle with finding data sources and setting realistic goals, so use this as an opportunity to guide them to unique, interesting, and achievable projects.

* Install [Git History](https://github.com/DonJayamanne/gitHistoryVSCode) for VS Code to help visualize Git histories.

* Please refer to our [Student FAQ](../../../05-Instructor-Resources/README.md#unit-07-project-1) for answers to questions frequently asked by students of this program. If you have any recommendations for additional questions, feel free to log an issue with your desired additions.

* Make sure to send out the [Git Branching Workflow](http://nvie.com/posts/a-successful-git-branching-model/) before the end of class.

* Send out the [Visual Introduction to Git](https://medium.com/@ashk3l/a-visual-introduction-to-git-9fdca5d3b43a) before the end of class.

  * If possible, share the preceding resources both _before_ today's class and _again_ at the end of it.

* Have your TAs refer to the [Time Tracker](TimeTracker.xlsx) to stay on track.

* If you have issues with any of today's activities, you may report them [here](http://tiny.cc/BootCampFeedback).

* Lastly, as a reminder, these slideshows are for instructor use only; when distributing slides to the students, please first export the slides to a PDF file. You may then send out the PDF file.

</details>

- - -

# Class Activities

## 1. Introduction to Git

| Activity Time:       0:50 |  Elapsed Time:      0:50  |
|---------------------------|---------------------------|

<details>
    <summary><strong>📣 1.1 Instructor Do: Create Groups (5 min)</strong></summary>

* Open the [slideshow](https://docs.google.com/presentation/d/11YUbqV-DGXcBGOLo1XixJUlSd2ybL-hjqtJG5zz3igM/edit?usp=sharing) to welcome the class.

* Greet the students, and explain that today is the first day of Project Week.

  * Take a moment to congratulate the students on making it this far!

* Explain that, over the next two class weeks, the students will work in groups to find and analyze a dataset of their choosing.

* Point out that this provides the students with an opportunity to practice both data analysis and collaborative workflows.

* Explain that we’ll focus on using Git for collaboration during the first half of class. Then, in the second half of class, the students will convene with their groups and start thinking about their projects.

* Break the students into groups, and give them a few minutes to get situated before moving on.

</details>

<details>
    <summary><strong>📣 1.2 Instructor Do: Intro to Git (30 min)</strong></summary>

* Use the slideshow to introduce Git.

* The following file contains instructions for this demonstration:

* **File:** [Activities/01-Ins_Workflows/README.md](Activities/01-Ins_Workflows/README.md)

* **Note**: Consider using the [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) extension in VS Code to demonstrate this section’s contents, as captured in the following image:

![Visualizing Git histories with the Git History plugin](https://raw.githubusercontent.com/DonJayamanne/gitHistoryVSCode/master/images/gitLogv3.gif)

* Open the [Workflow Diagrams](Activities/01-Ins_Workflows/README.md) document for reference.

  * Have your TAs send this file out to the students, as well.

* As a review, ask a student to explain what Git is:

  * “Git is a tool for saving our work as we develop a project.”

  * “Git keeps track of our work over time.”

* Explain that, whenever we get another piece of a project working, we can save the change with Git.

  * This "save" is called a **commit**, and it represents a checkpoint for our project, where we state what we did and why we did it.

* Explain that, if we break something in our code during development, this system allows us to restore the working code from before we made changes.

  * Since Git remembers these “checkpoints,” we can work on several different concerns all at once.

* Present the following scenario: For our project, let's say on transportation, we need to add an analysis of Uber rider data.

  * If we decide to analyze the average age of riders, Git essentially allows us to write this code and save it with the name `age_analysis`.

  * This code would be _different_ from the code that we started with, and it lives separately from the starting code.

  * In this scenario, we have a version of the code called `main`, which is the "main" version of our code; we also have a version called `age_analysis`, which contains updates.

  * `age_analysis` is a branch based on the `main` branch. That is, it adds to or modifies code currently in the main branch.

* Explain that each version of the code lives on a different **branch**.

  * A **branch** is essentially a history of changes.

  * In this case, the `age_analysis` branch **diverged** from the `main` branch.

* Take a moment to discuss the benefits of having a separate branch for analyzing Uber rider data:

  * It gives our collaborators a chance to review the branch for errors and offer suggestions.

  * After the proposed change has been reviewed, we can update the `main` branch to include the changes in `age_analysis` by performing a **merge**.

* Explain that **merging** two branches turns them into one branch.

  * This is how we can work on new features or bug fixes without affecting the main code.

  * When the code in the new branch (`age_analysis`) is merged with the main code, it becomes part of the main code (`main`).

  * By working on different branches, collaborators are also able to avoid stepping on each other's toes.

* Finally, take a moment to review Git's [snapshot model](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F), as captured in the following image:

![Git Snapshot Model](https://git-scm.com/book/en/v2/images/snapshots.png)

> “...Git thinks of its data more like a set of snapshots of a miniature filesystem. Every time you commit, or save, the state of your project in Git, it basically takes a picture of what all your files look like at that moment and stores a reference to that snapshot. To be efficient, if files have not changed, Git doesn’t store the file again, just a link to the previous identical file it has already stored. Git thinks about its data more like a stream of snapshots.”

</details>

<details>
    <summary><strong>🎉 1.3 Everyone Do: Creating a Project Repo (10 min)</strong></summary>

* Use the slideshow to introduce this activity.

* Explain that next, we'll set up a GitHub repository that students can use for their projects.

* Instruct groups to choose _one_ member to follow along with you; this will be the repo that the group shares for this project. Explain that groups will create a new repo for each project they work on after this one, and may have different collaborators depending on whether or not new groups are formed for each project.

* Go to [GitHub](https://github.com/), and click on the plus (**+**) button in the header to create a new repo, as captured in the following image:

  ![Creating a new repo on GitHub.](https://static.bc-edx.com/data/dl-1-2/m7/lessons/1/img/03-add-repo.png)

  * Fill out the fields on the new repo page.

  * Initialize with a `.gitignore`.

  * Choose `Python` in the gitignore dropdown.

  * The following image captures the creation of a new repo in GitHub that everyone can share:

![New project configuration.](https://static.bc-edx.com/data/dl-1-2/m7/lessons/1/img/03-new-project.png)

* After creating the repository, edit the `.gitignore` file and add the following code:

  ``` python
  # DS_Store
  .DS_Store
  ```

* Instruct the students in charge of creating their group's repository to send the remote URL (i.e., the link to the repo) to their teammates.

  * Team members will `git clone` this link.

* Explain that, by default, only the repo creator can push changes.

* Demonstrate how to "open up" the repo by adding **collaborators**.

  * Navigate to the repository **Settings**, as captured in the following image:

  ![Repository settings.](https://static.bc-edx.com/data/dl-1-2/m7/lessons/1/img/03-settings.png)

  * In the **Settings** tab, as captured in the following image, navigate to the **Collaborators** page, and enter your password when prompted.

  ![Repository collaborators.](https://static.bc-edx.com/data/dl-1-2/m7/lessons/1/img/03-collaborators.png)

  * From here, students can search for their teammates by username, as in the following image:

  ![Adding collaborators](https://static.bc-edx.com/data/dl-1-2/m7/lessons/1/img/03-add-collaborator.png)

  * Collaborators may need to accept an invitation to join the repo before they can make changes to it. Everyone in each group should now be able to make changes to the shared repo.

* Remind the students again that _everyone in the group must clone the new repository_.

  * Make sure that everyone has done this before moving on.

</details>

<details>
    <summary><strong>✏️ 1.4 Students Do: Workflows (5 min)</strong></summary>

* Use the slideshow to introduce this activity.

Send the students the following file so that they can complete this activity:

* **File:** [Activities/02-Stu_Workflows/README.md](Activities/02-Stu_Workflows/README.md)

* In this activity, students will take a few minutes to review the concepts they have learned so far.

* Once the students have completed the activity, send them the [solution](Activities/02-Stu_Workflows/Solved/Solved.md).

</details>

- - -

## 2. Git Continued

| Activity Time:       0:35 |  Elapsed Time:      1:25  |
|---------------------------|---------------------------|

<details>
    <summary><strong>🎉 2.1 Instructor Do: Creating Branches (10 min)</strong></summary>

* Use the slideshow to introduce this activity.

Send out the following file to the students so they can use it as a reference and follow along with the activity during the demonstration:

* **File:**
  [Activities/03-Ins_Branches/Solved/BranchDemo.md](Activities/03-Ins_Branches/Solved/BranchDemo.md)

* Check that the students understand the purpose of branching before proceeding to the activity.

  * Ask a student to explain the notion of branching.

  * Ask another student to describe two benefits of branching.

* Remind the students to navigate into the project directory that they just cloned from GitHub.

* Open the [Branch Demo](Activities/03-Ins_Branches/Solved/BranchDemo.md) for reference.

* Go through each uncommented line in the demonstration.

  * Encourage the students to follow along with their own repositories.

* Explain that first, we create a new file and commit it on the `main` branch.

* Explain that next, we create and **checkout** a new branch, on which we’ll do our data analysis.

  * Instruct the students who are following along to add their name as a prefix when they create this branch: for example, `<student name>/data_analysis`.

* Explain that we can then commit files on this branch, _without affecting the code on `main`_.

  * To emphasize this point, ask a student to explain the difference between the code on `main` and the code on `data_analysis`.

  * Instruct the students to add and commit a text file containing their name to their new branch.

* Explain that, after working on the `data_analysis` branch, we can checkout `main`, update it with our changes to `data_analysis`, and then delete the `data_analysis` branch if we don't plan to work on it anymore.

  * Point out that deleting branches like this isn't necessary. Mention that it is useful to delete branches in order to keep the repo tidy when the branch will no longer be used.

* Take a moment to address any questions before moving on.

</details>

<details>
    <summary><strong>🎉 2.2 Everyone Do: Pushing to GitHub and Pulling Down Locally (10 min)</strong></summary>

* Use the slideshow to introduce this activity.

* Point out that, up until now, the students' `data_analysis` branches aren't visible to their teammates&mdash;there's no way for their group members to see the work that they've done.

* Explain that, in order to share the work that we do on branches, we can **push** code from our computers to GitHub, and then our teammates can **pull** it from GitHub to their computers.

* Explain that there are two steps to push our local branch to GitHub:

  * First, checkout the branch that we want to push to GitHub.

  * Then, run `git push origin <branch_name>`.

    * Instruct the class to run this line to push their local branches to their shared repository.

* Explain that we have now pushed our local branch to GitHub, which allows our teammates to access it later.

* Explain that similarly, if our teammates push up branches, or they make changes to branches on the GitHub repo, we can pull these changes down to our local computers quickly and easily.

* After everyone has pushed to GitHub, instruct the class to checkout `main` and then complete the following steps:

  * First, run `git pull`.

  * Then, run `git checkout <branch_name>`, where `<branch_name>` is the name of one of their teammates' branches.

  * Give the students a minute or two to verify that the code that they checked out does indeed come from their teammate's branch.

* Point out that this allows us to easily share different versions of our code across workstations and test those versions on our local computers.

</details>

<details>
    <summary><strong>📣 2.3 Instructor Do: Recap Workflow & Share References (5 min)</strong></summary>

* Use the slideshow to introduce this activity.

The following file is the cheat sheet that was introduced in activity 3 and will be used again to review:

* **Files:** [Activities/03-Ins_Branches](Activities/03-Ins_Branches/Solved/BranchDemo.md)

* Take a moment to recap the basic steps of the Git workflow.

* Review the steps covered in the [Branch Workflow](Supplemental/BranchWorkflow.md) cheat sheet.

* Send out the cheat sheet again, in case the students haven’t downloaded it yet, and the [Git Recipes](Supplemental/GitRecipes.md) document before moving  on.

</details>

<details>
    <strong><summary>📣 2.4 Instructor Do: Introduce Projects (10 min)</strong></summary>

* Continue through the slideshow to introduce the first project and its requirements.

* Use the slides to review the schedule for the next two weeks. Remind the students that sticking to the schedule is essential to their success!

* Next, use the slides as a reference to briefly cover the development and presentation requirements.

* Explain that this project uses a rubric to assess each team's success with the tasks provided that can be reviewed on Canvas.

* Discuss the many different data sources available to the class. Encourage them not to take too long deciding which data to use or topic to research.

* Explain to the class that they have the option to choose a specific specialization track for this project: healthcare or finance. If teams would rather pursue a custom track, that's fine too!

* Briefly explain to the class that exploratory data analysis (EDA) is necessary for many tasks in finance! Use the slides to examine how an equity trader and financial analyst would each use these skills.

* Explain that different professions within healthcare also employ EDA in their work.

* EDA is used in other fields as well, including law enforcement and transportation.

* Take a moment to remind the students of today’s objectives before dividing them into their teams to begin project work.

* Take a moment to address any remaining questions before dismissing the class for break.

</details>

- - -

## Break

| Activity Time:       0:15 |  Elapsed Time:      1:40  |
|---------------------------|---------------------------|

- - -

## 3. Project Work

| Activity Time:       1:20 |  Elapsed Time:      3:00  |
|---------------------------|---------------------------|

<details>
    <summary><strong>🎉 3.1 Everyone Do: Project Work (80 min)</strong></summary>

* Navigate to the final slide, and leave is it on display while the students work on their project proposal.

* The students should spend the remainder of class working with their groups to develop a project proposal.

* Be sure to go around and offer advice on project scope, finding data sources, and the kinds of questions that would be interesting, and realistic, for the students to investigate.

</details>

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
