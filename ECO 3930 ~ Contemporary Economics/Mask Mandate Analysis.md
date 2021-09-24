# Mask Mandate Analysis

By: Gus Lipkin

Worked with Jake and Hailey.

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