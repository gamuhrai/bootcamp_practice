console.log(data);

// Create a custom function to return Roman gods with more than 1 million search results
function popular(roman) {
    return roman.romanSearchResults > 1000000
}

// Call the custom function with filter()
let popularRomans = data.filter(popular);

// Trace for the Roman Data


// Data trace array


// Apply title to the layout


// Render the plot to the div tag with id "plot"