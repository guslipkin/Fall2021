# Mask Mandate Analysis

By: Gus Lipkin

Worked with Jake and Hailey.



# New Stuff (All Math!)

​	Not going to lie, Hail and I got help from a Calc tutor on this one. Everything in Math Block 1 is taking the given equation in *Objective Function*, substituting for the longer forms of $s$ and $E$ given in their respective paragraphs, then taking the derivative.
$$
nc_m+nc_ss(s_0,m,n)+E(n,m-m_v)\\

\textrm{Take the derivative...}\\

\frac{\delta}{\delta m}[nc_mm]+\frac{\delta}{\delta m}[nc_ss(s_0,m,n)]+\frac{\delta}{\delta m}[E(n,m-m_v)]\\

nc_m(1)+m\frac{\delta}{\delta m}(nc_m)+\frac{\delta}{\delta m}[nc_ss(s_0,m,n)]+\frac{\delta}{\delta m}[E(n,m-m_v)]\\

nc_m+0+\frac{\delta}{\delta m}[nc_sn(1-s_0)]+\frac{\delta}{\delta m}[n(\frac{a(m-m_v)}{1-m})]\\

nc_m+n\frac{-a(1+m_v)}{1-m}\\
$$
​	Okay, that’s a little messy, but it’s okay, now the math should be relatively easy. All we have to do is set it equal to zero and solve for $m$.
$$
0=nc_m+\frac{-a(1+m_v)}{1-m}\\

\frac{-nc_m}{n}=\frac{n}{n}\frac{-a(1+m_v)}{1-m}\\

-c_m=\frac{-a(1+m_v)}{1-m}\\

(1-m)(-c_m)=-a(1+m_v)\\

-c_m+c_mm=-a-am_v\\

\frac{c_m}{c_m}m=-\frac{a}{c_m}-\frac{am_v}{c_m}+\frac{c_m}{c_m}\\

m=\frac{-a}{c_m}-\frac{am_v}{c_m}+1\\
$$
​	Okay. Great. We have something that we can stop at. $m$ is the fraction of people that wear masks. $m_v$ is the fraction of people wearing them voluntarily. $c_m$ is the individual cost of wearing a mask. And $a$ is some constant that is greater than zero. Let’s take a moment to run an exercise in futility. (I’ll explain why in a moment). Let’s set $m=m_v$. Everyone that is wearing a mask is doing so voluntarily. Yay! We plug $m$ back in for $m_v$ and…

$$
\textrm{If: } m=m_v\\

m=\frac{-a}{c_m}-\frac{am}{c_m}+1\\

m=\frac{-a(1-m)}{c_m}+1\\

m-1=\frac{-a(1-m)}{c_m}\\

mc_m-c_m=-a(1-m)\\

mc_m-c_m=-a+am\\

mc_m=-a+c_m+a_m\\

mc_m-a_m=-a+c_m\\

m=\frac{-a+c_m}{c_m-a}\\

m=\frac{c_m-a}{c_m-a}\\

m=1
$$
​	Oh no. If everyone is wearing a mask voluntarily, then enforcement costs are optimized when everyone is wearing a mask. Good work, team! In other news, the enforcement costs are also zero when there are no people, and in Africa, every sixty seconds, a minute passes.

​	Let’s get back to the equation that wasn’t dumb. Here it is again for reference:
$$
m=\frac{-a}{c_m}-\frac{am_v}{c_m}+1\\
$$
*I’ve tried embedding an animated chart below.*
*If this doesn’t work for you, try clicking this link: https://www.desmos.com/calculator/cudscdr1wx*

<iframe src="https://www.desmos.com/calculator/cudscdr1wx?embed" width="500" height="500" style="border: 2px solid #000" frameborder=0></iframe>

​	I promise this makes sense. The $\textrm{x-axis}$ represents $c_m$, the personal cost of wearing a mask. The $\textrm{y-axis}$ represents the proportion of the population that is wearing a mask. The graph should have bounds at $y=[0,1]$, but zooming out a bit gives a clearer picture. The easiest part to understand is that $m_v$ changes the angle of the corners and how sharply the curve hits the asymptote. Depending on the value of $a$, this can also affect the minimum point at which $c_m$ begins to have an effect. As more people choose to wear a mask, the cost to each person matters less, so the curve flattens out. $a$ changes how far the graphs asymptotes are from $x=0$ and represents the amount of people that are, in essence, anti-mask, and require lots of encouragement to be a decent human being and just wear a mask. The animated chart doesn’t slow down at the bounds, where $a=0$, but at that point, everyone will wear a mask at any value of $c_m$ and the value of $v$ will have no effect. Thus, as the number of anti-maskers increases, it becomes increasingly expensive to enforce mask usage. However, you can learn two things from this. One, if you pay people to wear a mask, you’ll pretty much get everyone to wear a mask. Two, as the cost of wearing a mask increases, you get less and less people wearing a mask, especially so when there are more anti-maskers.

# Introduction

​	Mask mandates are a controversial and hot topic during the ongoing pandemic. Many people support mask mandates, effectively a law requiring that people wear masks, and many people support not having a mask mandate. Of course, there are always people who sit between. As with any law and pandemic, there are costs associated with enforcement and sickness, and benefits associated with wearing a mask and staying healthy. The goal is to calculate the most economically efficient percentage of people to wear a mask during a mask mandate.

# Assumptions

- Masks protect other people, but not you
- We can ignore the cost of being sick for people who choose not to wear masks. We are assuming that people are not wearing masks because they think that catching COVID will have no impact on them.
- The cost of enforcement increases proportionally with the percent of the population that wears a mask
- Assume a spherical cow in a vacuum
- The personal incentive to wear a mask decreases as the number of other people wearing a mask increases because masks protect other people and not you. This is then cancelled out by the social pressure of others around you wearing a mask and you being the odd person out.

# Analysis

## Variable Definitions

- $n$: The number of people

- $s$: The number of sick people

- $m$: The number of people wearing a mask
  - $m_{min}$: The number of people that will wear a mask without a mandate
  - $m_{max}$: The maximum number of people that will wear a mask
- $C_e$: The cost of enforcing a mask mandate
- $C_s$: The cost of getting sick
- $C_m$: The cost of wearing a mask. (Discomfort, preference, personal costs)
- $E$: A general error term

## Function Definitions

- $\frac{m(n-s)}{n^2}$: The protection ratio. This is, essentially, how well protected you are in society. It is the proportion of people wearing masks multiplied by the proportion of healthy people.

## The Actual Analysis

- $(C_s*s)+C_mC_e+E$: A primitive calculation of the cost of a mask mandate. This is the total cost of being sick (number of sick people times the cost of being sick), plus the cost of enforcing a mask mandate multiplied by the associated cost of wearing a mask, plus an error term.

<img src="Mask Mandate Analysis.assets/Screen Shot 2021-09-09 at 9.01.35 PM.png" alt="Screen Shot 2021-09-09 at 9.01.35 PM" style="zoom:50%;" />

​	The cost of enforcement increases as the percentage of people wearing masks goes up. This will approach the optimal percentage of people wearing masks. 

# Conclusions

​	Generally, the cost of enforcing a mask mandate will increase as the percentage of people wearing a mask increases.

# Current Steps

> Only the stuff from here down is new

- Implement the protection ratio
- **Consider benefits and costs**
  - Maybe standing?
  - Benefits:
    - Slows spread
    - Spend less on contact tracing
    - Less people get sick
    - Less hospitalized
  - Costs: 
    - Enforcement
    - Free masks
    - Advertising
    - Education
- Work with $m_{min}$ and $m_{max}$
- **What conditions make a mandate optimal (or sub-optimal)**
  - A mask mandate is optimal as the ratio of the amount of masks worn to total costs increases. For a mandate to be sub-optimal, that ratio would have to fall below an arbitrary value determined by *The Powers That Be*.
- **Under what conditions is it a good or bad idea**
  - A mask mandate is a good idea if:
    - Case count is high
    - There is low mask usage
    - Risk of transmission is high
      - Low vaccination
      - Highly contagious variant
    - As $m_v$ decreases when the population becomes complacent
  - A mask mandate is a bad idea if:
    - People are very angry about being told what to do
    - When total cases are declining because enforcement costs are increasing in proportion
    - If $m_v$ is extremely high and approaching $m_{max}$
- Add in probability of exposure?
- **Talk through the basic economics of what are the tradeoffs in a mask mandate. Diff in ask vs enforce.**
  -  When you ask someone to wear a mask, there are no enforcement costs. Some people may be more likely to then wear a mask because you have appealed to their humanity and appreciate being asked to wear one over being told to wear one. Yet more people may wear a mask because they have been asked to and don’t want to cause trouble or because they don’t particularly want to wear one but recognize that if *The Powers That Be* are asking them to wear a mask, then they probably should. When you ask, your primary cost is the cost of people being sick because they decided not to wear a mask and not the cost of enforcement.
    When you enforce a mandate, the primary cost is the enforcement. Some people don’t like being told what to do and will continue to not wear a mask as a show of “defiance” because they think that getting sick and dying of Covid is the perfect way to stick it to the man. Some of the same people that would have worn a mask when being asked to do so will wear a mask for the same reason if there is a mandate that is enforced. The biggest difference and the group that enforcement will have the greatest effect on is the group that says “Well, they’re only asking me to wear a mask so I’m not going to” but will wear a mask when it is mandated, either because they don’t want to cause problems, or because they recognize the gravity of the situation if a mandate is being enforced.
- **Transmission as an externality**
  - Some people will be more or less likely depending on the likelihood of transmission. This is generally reflected by the group of people who only got a vaccine because they were told that if they did, then they wouldn’t have to wear a mask. However, yet more people will choose to wear or not wear a mask based on the likelihood of transmission in a given situation. For example, I may choose not to wear a mask while canoeing at a state park, but would choose to wear one at a monster truck rally with thousands of people in attendance, even if a negative Covid test or proof of vaccine was required for entry.