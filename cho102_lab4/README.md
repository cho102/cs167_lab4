# Lab 4

## Student information

* Full name: Cindy Ho
* E-mail: cho102@ucr.edu
* UCR NetID: cho102
* Student ID: 862151318

## Answers

* (Q1) What do you think the line `job.setJarByClass(Filter.class);` does?</br>
I think the line will set the JAR of the Filter class to perform the MapReduce tasks. It will inform Hadoop of the JAR file that it needs to send to the nodes.         
* (Q2) What is the effect of the line `job.setNumReduceTasks(0);`?</br>
No reducer will execute and no aggregation will take place. That means  hat it only has a map phase.
* (Q3) Where does the `main` function run? (Driver node, Master node, or an executor node).</br>
The main function run on the master node.
* (Q4) How many lines do you see in the output?</br>
  27972 lines
* (Q5) How many files are produced in the output? </br>
For the nasa_19950801.tsv file, 1 file was produced in the output: part-m-00000 along with the _SUCCESS file.</br>For the nasa_19950630.22-19950728.12.tsv file, 5 files are produced in the output: part-m-00000, part-m-00001, part-m-00002, part-m-00003, part-m-00004 along with the _SUCCESS file.
* (Q6) Explain this number based on the input file size and default block size.
</br>The default block size if 32MB. So, since the nasa_19950801.tsv file is initially 2339220 bytes, it would only be in one block. For the larger file, it is 148483808 bytes and then it will be filtered for response code "200," which when divided by each block which is 32MB, there are 5 block which the file is split into.
* (Q7) How many files are produced in the output?
 </br> For the nasa_19950801.tsv file, 1 file was produced in the output: part-m-00000 along with the _SUCCESS file.</br>For the nasa_19950630.22-19950728.12.tsv file, 2 files are produced in the output: part-m-00000, part-m-00001 along with the _SUCCESS file.
* (Q8) Explain this number based on the input file size and default block size.
</br>Since the default block size is 64MB, the  nasa_19950801.tsv file is small enough to fit in one block. That is also true for the larger file to be split into two parts after filterinf for response code "200". 
* (Q9) How many files are produced in the output directory and how many lines are there in each file?
</br>3 files were produced in the output directory: _SUCCESS, part-r-00000, part-r-00001. In the _SUCCESS file there are 0 lines, part-r-00000 5 lines:</br>
200	481974462</br>
302	26005</br>
304	0</br>
404	0</br>
and part-r-00001 0 lines.
* (Q10) Explain these numbers based on the number of reducers and number of response codes in the input file.
</br> Since there are two reducers set, two output files are created. There is only 5 response codes so only part-r-00000 has output lines since it could all fit in that file and part-r-00001 is empty. 
* (Q11) How many files are produced in the output directory and how many lines are there in each file? </br>3 files were produced in the output directory: _SUCCESS, part-r-00000, part-r-00001. In the _SUCCES file there are 0 lines, part-r-00000 5 lines:</br> 200	37585778 </br>
302	3682049</br>
304	0 </br>
404	0</br>
500	0</br>
and part-r-00001 2 lines: </br>
403	0 </br>
501	0</br>

* (Q12) Explain these numbers based on the number of reducers and number of response codes in the input file.
</br>  2 reducers are set so two output files are in the output directory. There are 7 response codes in the large file so after part-r-00000 is full, part-r-00001 is then used for the output.
* (Q13) How many files are produced in the output directory and how many lines are there in each file?
</br>3 files were produced in the filter output directory: _SUCCESS, part-m-00000, part-m-00001. In the _SUCCESS file there are 0 lines, part-m-00000 1533533 lines and part-m-00001 168001 lines. </br></br>

</br>3 files were produced in the aggregation output directory: _SUCCESS, part-r-00000, part-r-00001. In the _SUCCESS file there are 0 lines, part-m-00000 1 lines:</br>
200	37567599</br>
and part-r-00001 0 lines.
* (Q14) Explain these numbers based on the number of reducers and number of response codes in the input file.
</br>In filter, it simply filters all the 200 response codes. In aggregation it set the number of reducers to 2 so it has two output files and there is only one line since it is taking the filter_output file as an input where the file already filter all the 200 response codes so it is the only code in the aggregation input file.
