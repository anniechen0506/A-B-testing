# A-B-testing
Repo for GB740: Experiments and Causal Methods for Business Insights(2023)

### [* My project: ChatGPT v.s. Expert's Advice](https://github.com/anniechen0506/A-B-testing/tree/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice)
- **Case Study Information**: [ChatGPT Project Overview.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice/README.md)
- **Data Set**: [chat_gpt_experiment_data.csv](https://github.com/anniechen0506/A-B-testing/blob/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice/chat_gpt_experiment_data.csv)
- **My Experiment Analysis Document**: [AI v.s. Expert Advice_Annie Chen.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice/AI%20vs%20Expert%20Advice_Annie%20Chen.pdf)
- **Experiment Design**:
   * **Control Group**: estimate crowd size without any aid -> ask confidence level.
   * **Treatment Group 1 (ChatGPT)**: estimate crowd size -> provide with ChatGPT's method -> ask confidence level.
   * **Treatment Group 2 (Expert)**: estimate crowd size -> provide with expert's method -> ask confidence level.
- **Objective**: To understand how advice from an AI tool affects people’s confidence.
- **Methodology**:
   * Balance checking: verify that pre-experiment variables are evenly distributed across treatment and control group.
   * Statistical Analysis: Calculation of Average Treatment Effects (ATE) and 95% Confidence Interval (CI) using R.
   * Subgroup Analysis: Examine the treatment effects across different levels of familiarity on ChatGPT, categorized into 5 deciles, to identify any patterns or variations in people's confidence.



### [1. Clinic Sales Experiment Analysis](https://github.com/anniechen0506/A-B-testing/tree/main/Clinic%20Sales%20Analysis)
- **Case Study Information**: [Clinic sales case description.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/Clinic%20Sales%20Analysis/Clinic%20sales%20case%20description.pdf)
- **Data Set**: [clinicsales.csv](https://github.com/anniechen0506/A-B-testing/blob/main/Clinic%20Sales%20Analysis/clinicsales.csv)
- **My Experiment Analysis Document**: [Clinic Sales Memo_Annie Chen.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/Clinic%20Sales%20Analysis/Clinic%20Sales%20Memo_Annie%20Chen.pdf)
- **Experiment Design**:
   * **Control Group**: Clinics received the original "cost-focused" pitch.
   * **Treatment Group 1**: Clinics received the "easier to use" pitch.
   * **Treatment Group 2**: Clinics received the "fewer errors" pitch.
- **Objective**: To evaluate the efficacy of different sales pitches in converting clinics to use the test kits.
- **Methodology**:
   * Statistical Analysis: Calculation of Average Treatment Effects (ATE) and 95% Confidence Interval (CI) using R.

### [2. RocketFuel Case Study](https://github.com/anniechen0506/A-B-testing/tree/main/RocketFuel%20Case%20Analysis)
- **Case Study Information**: [RocketFuel Case - MSBA FA2023.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/RocketFuel%20Case%20Analysis/RocketFuel%20Case%20-%20MSBA%20FA2023.pdf)
- **Data Set**: [rocketfuel_deciles.csv](https://github.com/anniechen0506/A-B-testing/blob/main/RocketFuel%20Case%20Analysis/rocketfuel_deciles.csv)
- **My Experiment Analysis Document**: [Rocket Fuel Analysis_Annie Chen.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/RocketFuel%20Case%20Analysis/Rocket%20Fuel%20Analysis_Annie%20Chen.pdf)
- **Experiment Design**:
   * **Control Group**: Clinics that were not exposed to new advertising strategies and continued with pre-existing approach.
   * **Treatment Group**: Represented by 10 deciles in the data, indicating clinics that received new ad exposure.
- **Objective**: To determine how different levels of ad impressions influence the likelihood of clinics adopting the test kits, and thus to assess the efficacy of targeted advertising.
- **Methodology**:
   * **Balance checking**: verify that pre-experiment variables are evenly distributed across treatment and control group.
   * **ATE Estimation**: along with the associated standard error and 95% confidence interval.
   * **Subgroup Analysis**: Examine the treatment effects across different levels of ad exposure, categorized into deciles, to identify any patterns or variations in effectiveness


### [5. Natural Experiment](https://github.com/anniechen0506/A-B-testing/tree/main/Natural%20Experiment)
- **Case Study Information**: [Multi-dimensional Rating system](https://github.com/anniechen0506/A-B-testing/tree/main/Natural%20Experiment#:~:text=homework%205%202023.docx)
- **Data Set**: [Sales DID.csv](https://github.com/anniechen0506/A-B-testing/tree/main/Natural%20Experiment#:~:text=2%20minutes%20ago-,sales_DID.csv,-Add%20files%20via), [RatingData.csv](https://github.com/anniechen0506/A-B-testing/blob/main/Natural%20Experiment/RatingData.csv)
- **My Experiment Analysis Document**: [Natural Experiment_Annie Chen.html](https://github.com/anniechen0506/A-B-testing/blob/main/Natural%20Experiment/HW5_Natural%20Experiments_Annie%20Chen.html)
- **Experiment Design**:
   * **Control Group**: Restaurants on a Yelp that did not change their rating system and continued with the original overall ranking.
   * **Treatment Group**: Restaurants on Trip Advisor that implement the multi-dimensional rating system in January 2009.
- **Objective**: To evaluate the impact of the introduction of multi-dimensional ratings on the overall average ratings of restaurants on Trip Advisor.
- **Methodology**:
   * **Difference-In-Difference (DID)**: Use DID estimate comparing ratings before and after the change in January 2009.
   * **Line Chart**: Plot average ratings by month with 95% confidence intervals to visually assess the impact.
   * **Regression Analysis**: Run regression analysis to quantify the effect of the new rating system on average ratings and determine statistical and business significance.
