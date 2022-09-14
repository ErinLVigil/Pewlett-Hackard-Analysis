# Pewlett-Hackard-Analysis

## Overview and Analysis
  Pewlett- Hackard is an established company with growing portion of it's employee base entering retirment age. The management team would like to identify this group of individuals to do some further analysis. 
  Some of the things in which the team is interested in understanding include:
  * What is the total size of the group
  * What departments are impacted the most
  * How many of these individuals are mentors
  * What are the titles of the individuals retiring
  * Who are the current employees that should be mentored to fill vacancies from retired employees
  
  ## Results
  
  * Running an initial search of the employees who are deemed in the age bracket for retirement reveals an alarmingly large list! There are over 133 thousand names on this list and might cause a great deal of concern. Running a much more specific query to limit the search results to only unique names and discard duplicates in addition to screening out those no longer employed by the company is an invaluable exercise. The edited results from this query cut the list almost in half, to just over 72 thousand names. 
      
      Here is an example of the original table and the edited table below it to demonstrate the effectiveness of focused queries
      
![Retiring_employees](https://user-images.githubusercontent.com/109319148/190033588-10556254-a05c-49aa-8858-3e8334f1a7e2.png)

  ![Edited_list](https://user-images.githubusercontent.com/109319148/190033598-391a16af-11eb-4aaf-b777-ad0c71e6864f.png)
  
  * Looking at the titles of the employees soon to retire, the overwhelming majority are in Senior Engineer and Senior Staff. These make up about two thirds of the employees. This is a highly skilled group of individuals. We noticed that many on this list had been in more junior positions and been promoted, so also carry invaluable institutional knowledge. The rest of the group is split between 4 additional titles with only 2 managers on the list. This seems odd that more managers are not on this list since we would guess that managers would be very senior employees at the end of their career. 

 ![Title count](https://user-images.githubusercontent.com/109319148/190035617-300c0754-e54a-42ac-aa00-d512137416b3.png)
 
 * The next query looks for employees who are still active with the company and a few years behind the retiring group. The idea would be to enroll these employees in a mentorship program with the retiring employees in order to transfer some of that institutional knowledge. The retiring group represented those born in a 4 year range. This query looked for a pool born within a 1 year range. We would hope that this group would be at least 25%, if not more, of the size of the retiring group. The results are not promising. Many more are retiring than are coming up to take their place
     *   The retiring group is over 72,000 in a 4 year period
     *   The mentoring group is only 1500 in a 1 year period
  *   The "silver tsunamni", the name given to the group of retirees in a 3 year period, makes up about 30% of the current workforce at Pewlett-Hackard and the mentorship program will need to be expanded if it is to be the only solution to the loss of talent

## Summary

  In total, over 72 thousand roles will need to filled from the "silver tsunami",  or 30% of the entire employee base. To understand what this is going to look like, it might be useful to see if this is going to be concentrated in any one year, assuming everyone retires when they reach the same age. I ran another query to construct a table with all the required fields and then group by year. The good news is that when these workers are counted by birth year, they are somewhat evenly distributed as seen in this table:
  
  ![retire_by_year](https://user-images.githubusercontent.com/109319148/190044895-fc25e413-7e34-4190-8f10-86075bdfff4e.png)
  
  Since the retiree pool is much larger than the mentor pool, it can be assumed that there are enough mentors to cover. However, I created an additional query to make sure that all titles were adequately covered assuming that each mentor would work with a mentee at or below the retiree's title. All titles are adequately covered. I have two side by side tables with the mentors on the left and the mentees on the right. 
  
  ![mentors_to_mentees](https://user-images.githubusercontent.com/109319148/190046122-675558fa-d0da-4447-9f3d-32c1084bbd2c.png)
  
  Overall, Pewlett-Hackard is going to need more than just a mentorship program to mitigate the "silver tsunami". This will help to capture some of the institutional knowledge, but an overall check by HR of some additional data is waranted to understand if the skill sets of the older employees are covered by younger employees in the current organizational structure. It would also be worth looking at the population that has been employed with the company for more than 10 years and decide what portion of the workforce should be legacy employees and how often to interject diversity with new hires and new ideas into more senior positions. The "silver tsunami" and the data provided in analysis like this one are valuable to help determine the best path for the company to be successful and evolve. 


