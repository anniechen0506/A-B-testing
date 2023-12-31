## ChatGPT vs. Expert's Advice

**My Analysis: [AI v.s. Expert Advice_Annie Chen.pdf](https://github.com/anniechen0506/A-B-testing/blob/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice/AI%20vs%20Expert%20Advice_Annie%20Chen.pdf)**

**Experiment background**: In the final project of the A/B testing experiment course, we conduct an experiment using Qualtrics and Prolific. 
- The goal of the experiment was to understand how advice from an AI tool affects people’s confidence. This is important to understand because AI tools are increasingly common but they do not always give reliable answers, so it is possible people are overconfident with a tool in hand.

The experiment has the following basic structure:
- First, participants are shown a picture of a dense crowd in a stadium, and asked to estimate the size of the crowd.
- Then we ask them to describe their method. Next participants are randomly assigned to one of three conditions:

  - **Control**: shown picture again, asked if they want to change their guess, then asked confidence in their guess.
  - **Chat GPT**: Shown ChatGPT’s advice on how to estimate crowd size, asked if they want to change their guess, then asked confidence in their guess. Then asked if their strategy was similar to the ChatGPT’s
  - **Expert**: Shown an expert’s advice on how to estimate crowd size, asked if they want to change their guess, then asked confidence in their guess. Then asked if their strategy was similar to the experts’
- Finally all participants are asked gow familiar they are with Chat GPT.

We recruited 1903 subjects to take the experiment using Proflific, paying them $1 because I estimated it would take about 5 minutes. 

The original power calculations assumed a standard deviation of 1.58, and so had a minimum detectable effect of 0.29 (with 90% power and n=625 per arm), or about 10% of an assumed mean of 3.

The data are available in [chat_gpt_experiment_data.csv](https://github.com/anniechen0506/A-B-testing/blob/main/Project%3A%20ChatGPT%20vs.%20Expert%20Advice/chat_gpt_experiment_data.csv). The data contain the following fields:

- Duration: time taken in seconds to answer survey
- responseID: Qualtrics-assigned id
- guess1: initial crowd size guess
- strategy: free text entry field where subjects described their strategy to estimate crowd size
- guess2: second guess (often missing when subjects didn’t update their response)
- confidence: 1-5, coded as 1-not at all; 2-slightly; 3-moderately; 4-confident; 5-very confident
- similar: similarity between strategy and recommended one (missing for control subjects). 1-very different; 2-somewhat different; 3-somewhat similar; 4-very similar.
- use_gpt: how often do you use chat gpt? 1-never, 2-occasionally, 3-sometimes, 4 – often
