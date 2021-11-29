# Exam 2 Prep - Endogenous and Optimal Pandemic Responses

## Assumptions and Set Up

- There are $N$ identical individuals indexed by $j$. 
- The initial rate of infection is $i_0=0.5$, but no one knows yet if they are infected or not. 
- Individual $j$ ventures into the world $q_j$ times for work, school, shopping, etc. 
- If individual j is not yet infected (probability $1-i_0$) utility is $u_j=20q_j-f\theta c_i-0.5q^2_j$, where $f$ is the probability they become infected, $c_i$ is the cost of an infection, and $\theta$ is the share of cost borne by the individual. If $j$ is already infected (probability $i_0$) utility is $u_j=20q_j-\theta c_i-0.5q^2_j$. Expected utility is $u_j=i_0(20q_j-\theta c_i-0.5q^2_j)+(1-i_0)(20q_j-\theta c_i-0.5q^2_j)$ or $u_j=20q_j-0.5q^2_ji_0-i_0\theta c_i-(1-i_0)f\theta c_i$.
- Both the individual and average level of activity, $q_j$ and $\bar{q}$ , play a role in disease spread because the more active everyone else is, the more interactions $j$ has when active. 
- If $j$ is not infected initially, the probability they become infected is $f=0.004i_0q_j\bar{q}$.
- $N$ is sufficiently large that individuals ignore their impact on the average in making decisions. 
- The expected cost of becoming sick is $1,000$. The infected individual bears only half of that cost themselves and the rest accrues to others. 
- From the social perspective, since $q_j=\bar{q}$ in equilibrium because everyone is identical, the probability a person that is not initially infected gets infected is $f=0.004i_q\bar{q}^2$.
- Since from the social perspective all infection costs are paid by someone, utility per capita is $\bar{u}=20\bar{q}-0.5\bar{q}^2i_0-i_0c_i-(1-i_0)fc_i$.

## Questions

1. From the social perspective, find the number of individual interactions,  $\bar{q}$, that maximizes average expected utility. 
2. Find the activity level if everyone chooses the number of interactions to maximize their own utility. To do this, take the derivative of expected utility with respect to $q_j$ holding the average constant to find the optimal individual strategy, then use the fact that in equilibrium $q_j=\bar{q}$, giving you two equations in two unknowns. 
3. Find the level of activity if the risk of infection, or its cost, were negligible. 
4. Individuals reduce their activity compared to no epidemic, but less than is optimal. Thus, unregulated outcome is inefficient, and it is possible to make everyone happier with social intervention to reduce activity during the pandemic. Discuss the reasons for this. Hint: There are two ways in which individuals do not take into account the full costs of their actions. What are they, and how do they impact individual activity? 