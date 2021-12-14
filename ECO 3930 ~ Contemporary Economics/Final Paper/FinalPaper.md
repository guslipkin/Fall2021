# Tutoring is Bad

> Gus Lipkin
>
> December 15, 2021

# Introduction

​	The current tutoring system at Florida Polytechnic University is broken. Each department pays their own tutors for specific classes, and those tutors are only registered to tutor for those specific classes. Each tutor could tutor for many classes, including ones outside their department, but are not able to due to departmental restrictions. If each department pooled their resources together, they could hire tutors to cover a wider breadth of classes while paying the same number or even fewer tutors. This is almost an inverse case of the tragedy of the commons where if the departments pooled resources, the students would be better off for it. Each department is acting in their own best interest so the students have less supports available to them. However, if they chose to work together, then they would want to explore their options and maximize tutor availability while minimizing costs.

# A Personal Anecdote on Why this is Important

​	To be honest, there’s no reason for you to care. This won’t affect the vast majority of faculty and staff or students. However, it will have a significant impact on the students that do Florida Poly’s tutoring services. For students who are struggling, tutoring is a last line of defense before they drop out. When I was taking Statistics, my professor, Xuebo Liu, was very kind, but not a very good professor. When the midterm rolled around, I knew I was in trouble, and a week before, the exam, I began to go to tutoring every day that I could. The tutor never showed. With two days before the exam, I went to the department chair and told him that his tutor wasn’t coming even though he was logging hours as though he was. Of all the tutors employed at the time, I’m sure that there was more than just the one who would have been able to help me, but he was the only one that was listed as a stats tutor, and I didn’t know who else to go to. Had every tutor listed every class they were comfortable tutoring in, I would have had a much less stressful time by going to someone who could help. This goes for students today as it did for me. Tutors are only listed for a specific class at a specific time, and if a student is not available at that time, then they’re out of luck. If tutors listed every class they could tutor for, then help would be much more accessible to those in need.

# Literature Review

​	In 1990, Martha Maxwell of Appalachian State University conducted a literature of studies on tutoring to determine if tutoring really does help. *Does Tutoring Help? A Look at the Literature* found that “the small number of studies on college tutoring provide no consistent evidence that underpiepared students who are tutored improve either their grades or their grade-point averages.” While grades did not necessarily improve, the author found that students who attended tutoring stayed in school longer than those who did not. Finally, they concluded that new studies would need to be done as tutoring methods evolve.

​	Twenty years later, at Western Washington University, Erik Cooper wrote *Tutoring Center Effectiveness: The Effect of Drop-In Tutoring*. Using data collected from the university’s tutoring center during the 2007-2008 school year, they found that “students who visited the TC more than 10 times per quarter had approximately 10% higher rates of persistence and approximately 0.2 points higher average GPA's than students who infrequently visited or who do not visit the TC during their first year of college.”

# Discussion

## The State of Tutoring Today

​	Tutoring is in a different spot depending on the department. Humanities courses such as English and History have a writing center if you need help with writing. The center is staffed by professors from the humanities department and it is focused on helping with essays, cover letters, and general quality of writing. Perhaps this paper would have turned out better had I gone... The math department has a mix of peer learning strategists (PLS) and regular tutors. The job of a PLS is not to actually help you learn the material, but rather, supposedly, to help you learn how to learn. This position is widely regarded as being completely useless by the peer learning strategists themselves (I spoke with a few of them). While the strategists cover the calculus sequence from pre-calc through calc 2, regular tutors are employed for a variety of other math courses. Tutors for these classes are generally funded by the math department with the exception of statistics which is funded by the department of data science and business analytics. From there, tutors for specific courses are again generally funded by the department that "owns" that course. How a department decides which courses to have tutors for is a mystery. 

​	There is one constant, however, across all tutors and strategists (henceforth just tutors) which is that a tutor is scheduled to tutor for a specific course at a specific time. For example, I am the scheduled tutor for CGS 1100 - Computer Information Technology and Applications. This brings us to the core of the problem. No one has ever come to be tutored for CGS 1100 in the eleven weeks since I started that position. That is not to say that I have never tutored during my scheduled time. I have helped with chemistry 1, physics 1, intro to data science, intro to python, intro to programming, and statistics 1, not to mention the times my friends have called me directly for help with six sigma or quantitative methods. The point is not to brag, although I don't mind doing so, but rather to illustrate that many tutors, myself included, are not a one-trick pony. During the time I am scheduled to tutor, there is also a scheduled tutor for intro to python and intro to programming, so why have I tutored for those classes? Sometimes the other tutors are out sick and the schedule is not updated every week to reflect individual availability, but more frequently, I have tutored those classes because too many people show up for one tutor or because a group of people need help with different topics within the same course. For all the other courses I have tutored for, I simply happened to be available when someone walked in to the tutoring center and asked for help.

​	In the current model, there are inefficiencies from several perspectives. From the students' perspective, tutors are not necessarily listed for the classes they need, and if they are listed, it is at a specific time that may not be accessible to them. Again, using myself as an example, I only tutor from 3-6pm on Friday afternoons. Many students either go home over the weekends for a variety of reasons or have jobs in the evening, or simply want to go out and party because it's a Friday afternoon. From the department paying the tutors' perspective, it is not efficient to pay someone to tutor no one or to tutor for a class that is not in their department. From the tutors' perspective, it is pretty great that you can be paid ten dollars an hour to do absolutely nothing, but also not great if you have a horde of people that need help and you get overwhelmed.

​	How can we improve the tutoring model at Florida Polytechnic University so that students are better served, tutors are being put to proper use, and the departments are not wasting what little money they have?

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

​	Before we dive into the math, we need to define a few variables. A university has a number of departments $d$, each department has a number of classes $c$, and each class has a number of tutors, $t$. Each tutor is then scheduled a number of hours $h$ and paid \$10 per hour. If you assume that everything is the same across departments, classes, tutors, and the number of hours they work, the cost function is quite simple.

$$
C=10dc_dt_ch_t
$$

​	If everyone schedules according to their specific needs, it’s a bit more complicated.
$$
C=\sum_1^d\sum_1^c\sum_0^t10h_t\\
$$
​	To ensure that everything is under budget $B$ for each department, divide the budget by the cost and so long as it is greater than or equal to the number of departments, you’re good.
$$
d\le\frac{\sum_1^d\sum_1^c\sum_0^t10h_t}{\sum_1^dB}
$$
​	It’s easier to understand on a departmental level when you have the budget for that department.
$$
1\le\frac{\sum_1^d\sum_1^c\sum_0^t10h_t}{B_d}
$$
​	Unfortunately, that’s not necessarily the most efficient as the total number of tutoring hours ($TH$) is just the departmental budget divided by the total number of hours they are willing to pay for a tutor.
$$
TH=\frac{10h_t}{B_d}
$$
​	And the total hours available to students $SH$. This is, in essence, a measure of how many students are able to visit tutoring.
$$
SH=\frac{\sum_1^c\sum_0^t10h_t}{\sum_1^dB_d}
$$
​	Let’s say we have five departments that have some number of classes each, $c_{d_i}$. . Each class then has some number of tutors $t_{c_i}$. And each tutor offers $h_{t_i}$ hours. Let’s make up some numbers that we’ll use for the rest of the paper. We will calculate this out and use the resulting required budget as our baseline budget. Rather than do this out by hand, we can use R, because R is my friend.

```R
# Set the seed
set.seed(2021)
# Create the number of classes across three departments
# Each department can have up to nine classes
c <- sample.int(n = 9, size = 3, replace = TRUE)
c
# [1] 7 6 7

# Create the number of tutors for each class
# Each class can have up to four tutors
t <- list()
for(i in 1:length(c)) {
  t <- rlist::list.append(t, sample.int(n = 5, size = c[i], replace = TRUE) - 1)
}
t
# [[1]]
# [1] 3 3 2 4 0 3 2
#
# [[2]]
# [1] 3 1 2 3 4 2
#
# [[3]]
# [1] 1 3 4 1 2 3 4

# Create the number of hours that each tutor works
# Each tutor has to work at least one hour and up to twenty hours
# We'll also assume that every tutor works every week for the whole semester
totalHours <- list()
for(i in 1:length(t)) {
  temp <- c()
  for(j in 1:length(t[[i]])) {
    temp <- append(temp,
      sum(sample.int(n = 20, size = t[[i]][j], replace = TRUE) * 16))
  }
  totalHours <- rlist::list.append(totalHours, temp)
}
totalHours
# [[1]]
# [1] 320 752 192 816   0 784 176
#
# [[2]]
# [1] 512 304  80 544 864 160
#
# [[3]]
# [1] 224 672 784  80 352 496 752
sum(sapply(totalHours, sum)) * 10
# [1] 88640
```

​	In the end, we have a budget of \$88,640 for a semester of tutoring. The university would divy that up between departments and departments would then further divy it up to classes and then the professors would decide about their tutors. In the end, at the class level, there is functionally no difference between one tutor for twenty hours or four tutors for five hours each, so long as none of the hours overlap. If they do, it starts to get more complicated than I can handle. I do know, however, that if two tutors are scheduled concurrently that the total number of student hours decreases at a rate relative to the number of students present for tutoring at that time. If there are no students and multiple tutors, the student hours will take a much greater hit than many students and several tutors. It could also be the case that there are so many students that are able to visit tutoring at the same time with the same problems that student hours is boosted above the baseline.

# Analysis

## A One-on-One Tutoring Model

​	A one-on-one tutoring model is much simpler to both describe and model. Here, a university employs a tutor rather than the department. One tutor can be schedule for one or more hours and one student comes to one hour of tutoring. The university would publish a list of tutors, their availability, and what courses they are qualified to tutor for. The university would also provide a way for students to schedule time with a tutor in certain blocks of time, probably either thirty or sixty minutes.

```mermaid
erDiagram

University ||--|{ Department : has
Department ||--|{ Class : offers

University ||--o{ Tutor : employs
Tutor ||--|{ Hours : "is scheduled"
Class ||--o{ Tutor : represents
Student ||--|| Hours : books
```

​	The best way to maximize this would be for the university to hire as few tutors that are capable of tutoring as many classes as possible rather than many tutors who can only tutor a few classes. In the former, while general availability may be reduced, course availability would be maximized. In the latter, while general tutoring availability may be maximized, there is no guarantee that course availability would also be maixmized. In fact, it could even be lower than in the first option.	

​	A cost function would only need to consider the amount a tutor is paid per hour (\$10) and how many total tutoring hours the university would want to be available. Coincidentally, because this is a one-on-one model, this also represents how many students could be served by the tutors. $t$ is the number of tutors and $h$ is the total number of hours offered by all tutors combined with $h_t$ the number of hours offered by a particular tutor.
$$
C=\sum_0^t10h_t\\
TH=\frac{10h}{B}=\frac{10h}{88640}\rightarrow h=8864\\
$$
​	This is, of course, the same number of total tutoring hours as the current model. Nevertheless, this does have one main advantage over the current model; So long as students are booking tutoring hours, the number of student hours will be relatively constant and the same as the number of tutor hours available. That is not to say that it could not also be boosted by friends booking time together if they are also struggling together.

## A Hybrid Group and One-on-One Tutoring Model

​	A hybrid model is exactly what it sounds like. It aims to combine the best aspects of both a group tutoring and one-on-one tutoring model in an effort to maximize student hours and minimize costs. Like the one-on-one model, tutors are available for private bookings for a variety of classes. Like the group model, some tutors may also or only be available for predetermined group hours for specific high-volume classes.

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

