# Exam 2 Prep - Endogenous and Optimal Pandemic Responses

## Assumptions and Set Up

- There are $N$ identical individuals indexed by $j$. 
- The initial rate of infection is $i_0=0.5$, but no one knows yet if they are infected or not. 
- Individual $j$ ventures into the world $q_j$ times for work, school, shopping, etc. 
- If individual $j$ is not yet infected (probability $1-i_0$) utility is $u_j=20q_j-f\theta c_i-0.5q^2_j$, where $f$ is the probability they become infected, $c_i$ is the cost of an infection, and $\theta$ is the share of cost borne by the individual. If $j$ is already infected (probability $i_0$) utility is $u_j=20q_j-\theta c_i-0.5q^2_j$. Expected utility is $u_j=i_0(20q_j-\theta c_i-0.5q^2_j)+(1-i_0)(20q_j-\theta c_i-0.5q^2_j)$ or $u_j=20q_j-0.5q^2_ji_0-i_0\theta c_i-(1-i_0)f\theta c_i$.
- Both the individual and average level of activity, $q_j$ and $\bar{q}$ , play a role in disease spread because the more active everyone else is, the more interactions $j$ has when active. 
- If $j$ is not infected initially, the probability they become infected is $f=0.004i_0q_j\bar{q}$.
- $N$ is sufficiently large that individuals ignore their impact on the average in making decisions. 
- The expected cost of becoming sick is $1,000$. The infected individual bears only half of that cost themselves and the rest accrues to others. 
- From the social perspective, since $q_j=\bar{q}$ in equilibrium because everyone is identical, the probability a person that is not initially infected gets infected is $f=0.004i_q\bar{q}^2$.
- Since from the social perspective all infection costs are paid by someone, utility per capita is $\bar{u}=20\bar{q}-0.5\bar{q}^2i_0-i_0c_i-(1-i_0)fc_i$.

## Questions

1. From the social perspective, find the number of individual interactions,  $\bar{q}$, that maximizes average expected utility. 

   - Yay! Derivatives 😭
     $$
     \bar{u}=20\bar{q}-0.5\bar{q}^2i_0-i_0c_i-(1-i_0)fc_i\\
     \textrm{plug in and substitute...}
     \bar{u}=-\dfrac{cq^2}{1000}-\dfrac{q^2}{4}+20q-\dfrac{c}{2}\\
     \textrm{take the derivative with respect to q...}
     \frac{\delta\bar{u}}{\delta\bar{q}}=-\dfrac{\left(c+250\right)\bar{q}-10000}{500}\\
     0=-\dfrac{\left(c+250\right)\bar{q}-10000}{500}\\
     \bar{q}=\frac{10000}{c+250}; c\ne-250
     $$
     The higher the cost (in the negative direction), the higher the utility of masking.

2. Find the activity level if everyone chooses the number of interactions to maximize their own utility. To do this, take the derivative of expected utility with respect to $q_j$ holding the average constant to find the optimal individual strategy, then use the fact that in equilibrium $q_j=\bar{q}$, giving you two equations in two unknowns. 

   - $$
     u_j=20q_j-f\theta c_i-0.5q^2_j\\
     \frac{\delta q_j}{\delta u_j}=-q_j-\frac{\bar{q}c_i\theta}{500}+20\\
     \\
     0=-q_j-\frac{\bar{q}c_i\theta}{500}+20\\
     q_j=-\frac{\bar{q}c_i\theta}{500}+20\\
     \\
     \textrm{remember that...}q_j=\bar{q}\\
     \bar{q}=-\frac{\bar{q}c_i\theta}{500}+20\\
     \bar{q}=\frac{10000}{500+c_i\theta}; c_i\ne-\frac{500}{\theta}\\
     \\
     \textrm{plug back in...}\\
     q_j=-\frac{\frac{10000}{500+c_i\theta}c_i\theta}{500}+20\\
     q_j=-\frac{20c_i\theta}{500+c_i\theta}+20\\
     \\
     \textrm{thus, our two equations with two unknowns...}\\
     \bar{q}=\frac{10000}{500+c_i\theta}; c_i\ne-\frac{500}{\theta}\\
     q_j=-\frac{20c_i\theta}{500+c_i\theta}+20\\
     \\
     \textrm{plug back into utility and see what happens...}\\
     u_j=20(-\frac{20c_i\theta}{500+c_i\theta}+20)-(.004*.5*[-\frac{20c_i\theta}{500+c_i\theta}+20]*[\frac{10000}{500+c_i\theta}])\theta c_i-0.5(-\frac{20c_i\theta}{500+c_i\theta}+20)^2\\
     \frac{\delta\theta c_i}{\delta u_j}=-\frac{400(999c_i\theta+249500)}{(c_i\theta+500)^3}\\
     0=-\frac{400(999c_i\theta+249500)}{(c_i\theta+500)^3}\\
     c_i\theta=-249.\bar{749}\\
     \\
     \textrm{plug that in again...}\\
     q_j=-\frac{20*-249.749}{500+-249.749}+20\\
     q_j=39.96
     $$
     
     I got stuck here. Each person's activity level would be $q_j=39.96$, but I'm unclear on the units and am praying that I didn't make any mistakes. This does, of course, treat $c_i\theta$ as a constant, rather than a variable and basically lumped them together because they really do just represent one number. I just realized that at the very first step I didn't expand $f$, but i'm going to try very hard not to think about it and just hope that it doesn't matter even though it definitely does.

3. Find the level of activity if the risk of infection, or its cost, were negligible. 

   - If the risk of infection or its cost were negligible, then activity would be nearly normal. Of course, there will always be some people who are paranoid and avoid people and live in the mountains far away from everyone, but the overwhelming majority will live life as normal. The Ebola outbreak of 2014 is one such example.

4. Individuals reduce their activity compared to no epidemic, but less than is optimal. Thus, unregulated outcome is inefficient, and it is possible to make everyone happier with social intervention to reduce activity during the pandemic. Discuss the reasons for this. Hint: There are two ways in which individuals do not take into account the full costs of their actions. What are they, and how do they impact individual activity? 

   - Generally, people are unhappy because they want something or need something. With social intervention, you can restore that for which they want, and then they are more likely to self-regulate and go out less. Of course, some people are obstinate and will shout about not being told what to do, even if what you tell them to do makes sense. In short, they'd rather die than sit down and shut up. That said, people do not take fully into account the costs of their actions in two ways. The first is that they only consider themselves. If you do not consider that you can infect other people, it is easy to disregard public health policy because you believe that the only person you can harm is yourself. The second is that it is difficult to know how badly you will be affected by COVID until you have it and have either lived through it, but to any degree of recovery, or died from it. Some people may believe that they will be able to survive the infection with no repercussions. Such people would, again, largely disregard public health policy as they believe that the virus isn't as bad as some people believe.