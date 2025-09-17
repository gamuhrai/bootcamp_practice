// Get the Roadster endpoint
const url = "https://api.spacexdata.com/v2/launchpads";

// Fetch the JSON data and console log it
d3.json(roadster).then(function(data) {
    console.log(data);
});

// Get the capsules endpoint
const capsules = "https://api.spacexdata.com/v3/capsules";

// Fetch the JSON data and console log it
d3.json(capsules).then(function(data) {

    console.log(data);
});