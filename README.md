# Tecan Infinite Reader
## Introduction
This is used to process the xlsx file output by Tecan Microplate Reader (Currently Support Tecan Infinite 500).
The Infinite 500 outputs the reading data as a xlsx file, which includes multiple working sheets within one file.
This kind of file makes the data hard to organize, which is an obstacle to researchers! (At least in the lab i am working it is)
This project use Rscript to read all the data (Reading and Environment/Strain notation) from each worksheet in one file, and put the data into the dataframe, named by the Strain Notation.
## Let's Begin!
This is how the output file from Microplate Reader looks like:
![alt text](Tecan_Infinite_Reader/media/Test File.png)
