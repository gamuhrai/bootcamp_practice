// Array of movie ratings
let movieScore = [4.4, 3.3, 5.9, 8.8, 1.2, 5.2, 7.4, 7.5, 7.2, 9.7, 4.2, 6.9];

// Mean is the average of all the values.

function mean(numbers) {
    let total_sum = 0;
    for (let i=0; i<numbers.length;i++){
        total_sum += numbers[i];
    }

    let meanValue = total_sum/numbers.length;
    return meanValue
}


// Variance can be found by subtracting the mean from each number in the data set,
// squaring the result, and then averaging the square differences.



// Standard deviation is the square root of the variance



// Print to the console the Movie Statistical Analysis


// Print to the console the Rainfall Statistical Analysis
let monthlyAvgRainFall = [3.03, 2.48, 3.23, 3.15, 4.13, 3.23]


// Print to the console the Running Statistical Analysis
let mileRunTimes = [5.06, 4.54, 5.56, 4.40, 7.10]
