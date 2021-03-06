# Tecan Infinite Reader
## Introduction
This is used to process the xlsx file output by Tecan Microplate Reader (Currently Support Tecan Infinite 500).
The Infinite 500 outputs the reading data as a xlsx file, which includes multiple worksheets within one file.
This kind of file makes the data hard to organize (cannot be read directly by R), which is an obstacle to researchers! (At least in the lab i am working it is)
This project use Rscript to read all the data (Reading and Environment/Strain notation) from each worksheet in one file, and put the data into the dataframe, named by the Strain Notation.
## Requirement
R version 3.4.3
R Studio
R package 'gdata'
R package 'readxl'
## Let's Begin!
This is how the output file from Microplate Reader looks like:
![alt text](https://github.com/Zha0rong/Tecan_Infinite_Reader/blob/master/media/Test%20File.png?raw=true)
The test file is generated using RNG, the environment and notation are randomly assigned.
You can see that here the environment/notation is 'Drosophila-AspN/GluN' (I have no idea what this is).
Now you run the R script. Remember to change the file\_path to the file path of your file.
Then the data frame will be generated, like this:
![alt text](https://github.com/Zha0rong/Tecan_Infinite_Reader/blob/master/media/Sampleoutput1.png?raw=true)
![alt text](https://github.com/Zha0rong/Tecan_Infinite_Reader/blob/master/media/Sampleoutput2.png?raw=true)
As you can see, the data is extracted from the xlsx worksheet and named as the notation and environment.
I also attached the Environment/Notation to the end of each row. If you want to combine all the data together for the analysis you would not be confused!

The test case is uploaded too. 

Thank you!
## Help needed.
If you find some other model of Tecan microplate readers have different forms of output , and you want this project to work for those readers, please contact me and send me a sample output. I will check the sample and update this project shortly.
