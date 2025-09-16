# Dependencies
import os
import csv

# Specify the file to write to
output_path = os.path.join("..", "output", "new.csv")

# Open the file using "write" mode. Specify the variable to hold the contents
with open(output_path, 'w') as csvfile:

    # Initialize csv.writer
    csvwriter = csv.writer(csvfile, 
                                delimiter=',', 
                                # prevends double spacing
                                lineterminator="\n"
                            )

    # Write the first row (column headers)
    csvwriter.writerow(['First Name', 'Last Name', 'SSN'])

    # Write the second row
    csvwriter.writerow(['John', 'Doe', '555-55-5555'])

    # Write the third row
    csvwriter.writerow(['Jane', 'Doe', '555-55-5555'])
    csvwriter.writerow(['JP', 'Doe', '123-55-5555'])
