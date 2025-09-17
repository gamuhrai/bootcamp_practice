// Copy over the variables from the previous activity
let name = 'David Gamarra';

// Create another variable called 'title' using a string template to say "<your name>'s First Plotly Chart"
let title = `${name}'s First Plotly Chart`;
// Create an array called 'books' of your favorite book titles
let books = ["12 Rules for Life", "Physics", "Chemistry"]
// Create another array called 'timesRead' of how many times you've read each respective book
let timesRead = [5, 1, 1]
// Assign `x` and `y` values for the Plotly trace object
let trace1 = {
  x: books,
  y: timesRead,
  type: 'bar'
};

// Leave the code below unchanged
let data = [trace1];

let layout = {
  title: title
};

Plotly.newPlot("plot", data, layout);