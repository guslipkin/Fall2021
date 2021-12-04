# Exam 2 Prep - Rational Addiction Model Problem

## Assumptions and Set Up

- Suppose there are three time periods in a life, 1, 2, and 3 (youth, middle age, and old age). 
- Alice is deciding whether to use a drug which is she knows is addictive. 
- The current payoff Alice receives from using a drug which she knows is addictive is $v=6$ at 
  time 1, $v=5$ at time 2, and $v=0$ at time 3. 
- Since the drug is addictive, Alice will not be able to regulate her use to eliminate future negative 
  impacts of use. If Alice uses the drug at $t=1$, she suffers a cost (e.g. lost productivity or poor 
  health) of $c=6$ at $t=2$. If she uses at $t=2$, she suffers a cost of $c=8$ at $t=3$. 
- Treat each time period’s Alice as if they play a non-cooperative game against the other time 
  period’s Alices, where the three players are $A_1$, $A_2$, and $A_3$. 
- Utility each period is the sum of drug utility and drug costs, $u_t=v_t-c_t$. 
- At each period, Alice values her past and future utilities according to a discount factor of 0.5 
  per unit distance in time. So, for example, $A_2$’s total utility is $U_2=0.5u_1+u_2+0.5u_3$. 

## Questions

1. Show that $A_1$ and $A_2$ will choose to use the drug. 

   - $$
      U_1=(v_1-c_1)+.5u_2+.25u_3\\
      U_2=.5u_1+(v_2-c_2)+.5u_3\\
      U_3=.25u_1+.5u_2+(v_3-c_3)\\
      $$

      Let’s walk through this. We set up the utility function for each time period, including discounting.
      $$
      u_1=6-0=6\\
      u_2=5-6=-1\\
      u_3=0-8=-8\\
      $$
      Then we find the non-discounted utility for each time period.
      $$
      U_1=6+(.5*-1)+(.25*-8)\\
      U_1=6-.5-2\\
      U_1=3.5\\
      $$
      We plug everything in for $A_1$ and the utility is positive, so Alice would choose to start using drugs.
      $$
      U_2=(5-0)+.5(0-8)\\
      U_2=5-4\\
      U_2=1\\
      $$
      We then plug everything in for $A_2$ and the utility is still positive. Because the game is non-cooperative between different time periods, $A_2$ suffers no benefit from not starting drugs at $A_1$.

2. Show that, from behind a veil of ignorance with respect to which player she would actually turn out to be, Alice would choose to make the drug unavailable if it were costless to do so. 

   - The veil of ignorance means that the decision maker doesn’t know which version of the game they are playing. That is, Alice does not know if she is $A_1$, $A_2$, or $A_3$. That said, Alice would choose not to use drugs at all because she does not know which one she is and does not want to suffer consequences. However, the utility at time $t=3$ is $-8$ and so the expected utility across all time periods is $-1.1\bar{6}$. With a negative expected utility, she will choose not to use drugs.

3. For simplicity, assume the government moves resources freely across time (really the social discount rate is about $3\%$, with a value one period in the future worth $\frac{1}{1.03}$ that amount in the current period). Show the government could raise enough revenue from $A_2$ and/or $A_3$ to pay off both $A_1$ and $A_2$ not to use drugs in such a way that all three Alice’s are happier. (This means drug use is not Kaldor-Hicks efficient, at least in this case.) 

   - The payoffs per time period are $6$, $-1$, and $-8$. If the government is able to transfer $-7$ from $A_3$ to $A_1$, then the payoffs would be $-1$, $-1$, and $-1$. In such a scenario, Alice would have no incentive to begin using drugs at any stage because she would always have a negative payoff.

4. If drug use in this model is not Kaldor-Hicks efficient, and if Alice, behind the veil of ignorance, would choose to make it unavailable to herself if it were free to do so, how can this be said to be a model of rational addiction? 

   - Even though the average utility is negative, your utility can become positive for a time if you begin to use drugs and then it would be optimal for you to continue to use drugs. This is a textbook rational addiction model where it makes more sense to stay addicted than to try to stop using.

5. Discuss generally how the analysis would change if there was a chance Alice would be addicted and a chance she would be able to regulate her use to avoid serious future costs. In such cases, is it still clear drugs should be unavailable? Would an addicted $A_2$ and $A_3$ be better off if $A_3$ could pay off $A_2$ to quit? 

   - The analysis absolutely would change because some of the outcomes are now probability based. If Alice is able to regulate her drug use to avoid future costs, then there’s no guarantee that drugs should be unavailable. If that was true, then $A_2$ would be better off if $A_3$ could pay them to quit because Alice could choose to transfer resources from her future to her past to avoid addiction in the first place.