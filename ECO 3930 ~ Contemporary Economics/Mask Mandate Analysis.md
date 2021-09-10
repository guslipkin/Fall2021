# Mask Mandate Analysis

By: Gus Lipkin

Worked with Jake and Hailey.

# Introduction

​	Mask mandates are a controversial and hot topic during the ongoing pandemic. Many people support mask mandates, effectively a law requiring that people wear masks, and many people support not having a mask mandate. Of course, there are always people who sit between. As with any law and pandemic, there are costs associated with enforcement and sickness, and benefits associated with wearing a mask and staying healthy. The goal is to calculate the most economically efficient percentage of people to wear a mask during a mask mandate.

# Assumptions

- Masks protect other people, but not you
- We can ignore the cost of being sick for people who choose not to wear masks. We are assuming that people are not wearing masks because they think that catching COVID will have no impact on them.
- The cost of enforcement increases proportionally with the percent of the population that wears a mask
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

# Next Steps

- Implement the protection ratio
- Consider benefits and costs
  - Maybe standing?
- Work with $m_{min}$ and $m_{max}$
- What conditions make a mandate optimal (or sub-optimal)
- Add in probability of exposure?
- Talk through the basic economics of what are the tradeoffs in a mask mandate. Diff in ask vs enforce.