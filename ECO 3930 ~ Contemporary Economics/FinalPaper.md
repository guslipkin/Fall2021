# TITLE

> Gus Lipkin
>
> December 15, 2021

## Introduction

​	The current tutoring system at Florida Polytechnic University is broken. Each department pays their own tutors for specific classes, and those tutors are only registered to tutor for those specific classes. Each tutor could tutor for many classes, including ones outside their department, but are not able to due to departmental restrictions. If each department pooled their resources together, they could hire tutors to cover a wider breadth of classes while paying the same number or even fewer tutors. This is almost an inverse case of the tragedy of the commons where if the departments pooled resources, the students would be better off for it. Each department is acting in their own best interest so the students have less supports available to them. However, if they chose to work together, then they would want to explore their options and maximize tutor availability while minimizing costs.

## A Personal Anecdote on Why this is Important

​	To be honest, there’s no reason for you to care. This won’t affect the vast majority of faculty and staff or students. However, it will have a significant impact on the students that do Florida Poly’s tutoring services. For students who are struggling, tutoring is a last line of defense before they drop out. When I was taking Statistics, my professor, Xuebo Liu, was very kind, but not a very good professor. When the midterm rolled around, I knew I was in trouble, and a week before, the exam, I began to go to tutoring every day that I could. The tutor never showed. With two days before the exam, I went to the department chair and told him that his tutor wasn’t coming even though he was logging hours as though he was. Of all the tutors employed at the time, I’m sure that there was more than just the one who would have been able to help me, but he was the only one that was listed as a stats tutor, and I didn’t know who else to go to. Had every tutor listed every class they were comfortable tutoring in, I would have had a much less stressful time by going to someone who could help. This goes for students today as it did for me. Tutors are only listed for a specific class at a specific time, and if a student is not available at that time, then they’re out of luck. If tutors listed every class they could tutor for, then help would be much more accessible to those in need.

## Literature Review

​	In 1990, Martha Maxwell of Appalachian State University conducted a literature of studies on tutoring to determine if tutoring really does help. *Does Tutoring Help? A Look at the Literature* found that “the small number of studies on college tutoring provide no consistent evidence that underpiepared students who are tutored improve either their grades or their grade-point averages.” While grades did not necessarily improve, the author found that students who attended tutoring stayed in school longer than those who did not. Finally, they concluded that new studies would need to be done as tutoring methods evolve.

​	Twenty years later, at Western Washington University, Erik Cooper wrote *Tutoring Center Effectiveness: The Effect of Drop-In Tutoring*. Using data collected from the university’s tutoring center during the 2007-2008 school year, they found that “students who visited the TC more than 10 times per quarter had approximately 10% higher rates of persistence and approximately 0.2 points higher average GPA's than students who infrequently visited or who do not visit the TC during their first year of college.”

# Discussion

## The State of Tutoring Today

​	Tutoring is in a different spot depending on the department. Humanities courses such as English and History have a writing center if you need help with writing. The center is staffed by professors from the humanities department and it is focused on helping with essays, cover letters, and general quality of writing. Perhaps this paper would have turned out better had I gone... The math department has a mix of peer learning strategists (PLS) and regular tutors. The job of a PLS is not to actually help you learn the material, but rather, supposedly, to help you learn how to learn. This position is widely regarded as being completely useless by the peer learning strategists themselves (I spoke with a few of them). While the strategists cover the calculus sequence from pre-calc through calc 2, regular tutors are employed for a variety of other math courses. Tutors for these classes are generally funded by the math department with the exception of statistics which is funded by the department of data science and business analytics. From there, tutors for specific courses are again generally funded by the department that "owns" that course. How a department decides which courses to have tutors for is a mystery. 

​	There is one constant, however, across all tutors and strategists (henceforth just tutors) which is that a tutor is scheduled to tutor for a specific course at a specific time. For example, I am the scheduled tutor for CGS 1100 - Computer Information Technology and Applications. This brings us to the core of the problem. No one has ever come to be tutored for CGS 1100 in the eleven weeks since I started that position. That is not to say that I have never tutored during my scheduled time. I have helped with chemistry 1, physics 1, intro to data science, intro to python, intro to programming, and statistics 1, not to mention the times my friends have called me directly for help with six sigma or quantitative methods. The point is not to brag, although I don't mind doing so, but rather to illustrate that many tutors, myself included, are not a one-trick pony. During the time I am scheduled to tutor, there is also a scheduled tutor for intro to python and intro to programming, so why have I tutored for those classes? Sometimes the other tutors are out sick and the schedule is not updated every week to reflect individual availability, but more frequently, I have tutored those classes because too many people show up for one tutor or because a group of people need help with different topics within the same course. For all the other courses I have tutored for, I simply happened to be available when someone walked in to the tutoring center and asked for help.

​	In the current model, there are inefficiencies from several perspectives. From the students' perspective, tutors are not necessarily listed for the classes they need, and if they are listed, it is at a specific time that may not be accessible to them. Again, using myself as an example, I only tutor from 3-6pm on Friday afternoons. Many students either go home over the weekends for a variety of reasons or have jobs in the evening, or simply want to go out and party because it's a Friday afternoon. From the department paying the tutors' perspective, it is not efficient to pay someone to tutor no one or to tutor for a class that is not in their department. From the tutors' perspective, it is pretty great that you can be paid ten dollars an hour to do absolutely nothing, but also not great if you have a horde of people that need help and you get overwhelmed.

​	How can we improve the tutoring model at Florida Polytechnic University so that students are better served, tutors are being put to proper use, and the departments are not wasting what little money they have?

# Analysis

## The Current Group Tutoring Model

​	The current group tutoring model is quite simple and is outlined below.

- Each department decides which classes they want tutors for
- Each department then hires a tutor or multiple tutors for each class that they want a tutor for
- Each tutor then tells their department when they are available to tutor
- Each department then schedules their tutors
- Tutors are available at their assigned time

​	A sort of pseudo-entity relationship diagram would look like the below. Florida Polytechnic university has one or more departments. Each department offers one or more classes. Each department also employs any number of tutors. Each tutor then tutors one or more classes. Any number of tutors is scheduled for one or more hours and any number of students can come to any number of hours.

```mermaid
erDiagram

University ||--|{ Department : has
Department ||--|{ Class : offers
Department ||--o{ Tutor : employs
Tutor }o--|| Class : represents
Tutor }o--|{ Hours : "is scheduled"
Class ||--o{ Hours : schedules
Hours }o--o{ Student : "comes to"
```



## A One-on-One Tutoring Model

```mermaid
erDiagram

University ||--|{ Department : has
Department ||--|{ Class : offers

University ||--o{ Tutor : employs
Tutor ||--|{ Hours : "is scheduled"
Class ||--o{ Tutor : represents
Student ||--|| Hours : books
```



## A Hybrid Group and One-on-One Tutoring Model

```mermaid
erDiagram

University ||--|{ Department : has
Department ||--|{ Class : offers
Department ||--o{ Tutor : coordinates

University ||--o{ Tutor : employs
Tutor ||--|{ Hours : "is scheduled"
Class }|--o{ Tutor : represents

Tutor }|--|{ GroupHours : "is scheduled"
GroupHours }o--o{ Student : "comes to"
Hours ||--|| Student : books
```



## References

1. Maxwell, M. (1990). Does Tutoring Help? A Look at the Literature. *Review of Research in Developmental Education*, *7*(4).
2. Erik Cooper (2010) Tutoring Center Effectiveness: The Effect of Drop-In Tutoring, Journal of College Reading and Learning, 40:2, 21-34, DOI: 10.1080/10790195.2010.10850328

