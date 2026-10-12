# Bellabeat Consumer  Wellness Analytics: Smart Device Usage Case Study

## Executive Summary 
Bellabeat manufactures high-tech, design-focused health trackers tailored for women. This analysis investigate non-Bellabeat smart wearable biometric telemetry to identify consumer activity patterns, rest behaviours and weekly adherence drops. Findings directly inform the go-to-market and retention strategy for the **Bellabeat Leaf** tracker and the **Bellabeat App** ecosystem.

### Key Analytical Takeways
* **Sedentary Overload:** Tracked individual spend an average of **995 minutes (~16.6 hours)** of their waking day inactive.
* **The Sleep Latency Gap:** Users average **419 minutes (~7.0 hours)** of sleep per night, but spend an average of **39.2 minutes** in bed awake/restless before falling asleep.
* **The Weekend Slump:** Pysical activity drop significantly between Friday and Sunday, with step counts and high-intensity minutes reaching their lowest level on Sunday.

---

## Business Context & Core Questions
* **client / Stakeholder:** Urška Sršen (Chief Creative Officer) & Sando Mur (Co-founder, Mathematician).
* **Target Product:** Bellabeat Leaf (smart wellness tracker) & Bellabeat App.

### Guiding Business Questions
1. What behavioural trends characterize consumer smart device usage?
2. How do these activity patterns map to Bellabeat's core customer persona?
3. How can data-backed insights optimize Bellabeat's marketing & engagement strategy?

---

## Tech Stack & Methodology
* **Excel:** Initial data validation, parsing timestamps, removing duplicates, and calculating baseline columns.
* **MySQL:** Relational schema design, aggregations (`AVG`, `SUM`, `COUNT`) and user segmentation logic using `CASE WHEN`.
* **Python (Pandas, Numpy, Seaborn, Matplotlib):** Exploratory data analysis, missing-value audits and correlation analysis.
* **Power BI & Tableau:** Interactive executive dashbords, KPI scorecards and cross-metric trend visualizations.

---

## Data Sources & ROCCC Evaluation
* **Dataset:** [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit) (Mobius via Kaggle, CC0: Public Domain).
* **Sample Size:** 35 daily activity respondents (457 daily records) and 24 sleep respondents (410 duplicated reports).
* **Limitations (ROCCC Assessment):** 
  * **Sample Size & Demographics:** Small sample size without gender stratification requires cautious generalization for female-specific wellness positioning.
  * **Time Horizon:** Telemetry is bounded to a 30-day tracking window in March-May 2016.

---

## Key Data Insights & Analytical Findings 

### 1. Daily Movement Tiers 
Users were classified into standardized physical health segments based on daily volume:
* **Sedentary (<5,000 steps):** ~37% of recorded days.
* **Low/Moderate (5,000-9,999 steps):** ~43% of recorded days.
* **Highly Active (10,000+ steps):** ~20% of recorded days.

### 2. Time-in-Bed vs. Minutes Asleep
A linear correlation ($r = 0.91$) confirms consistency between bedtime and sleep duration, but highlighted persistent restlessness (average sleep latency of ~40 minutes per night).

---

## Executive Power BI Dashboard
![Executive Overview Dashboard](https://1drv.ms/i/c/ebe8770aa4d59fbb/IQAQW7tsX2d9TKrKnd5p9NKuAbfqn-Vx90GoJO3-JxUANPY?e=WLBH92)

### Dashboard Design Principles:
* **KPI Scorecards:** Instant visibility into Average Daily Steps, Sedentary Hours, and Nightly Rest.
* **Weekly Heatmap / Trend Matrix:** Day-of-Week drop off detection with chronological Monday-Sunday sorting.
* **Interactive Slicers:** Filter dynamic metrics by User Activity Segment and Day Classification (Weekday vs. Weekend).

---

## Top Three Strategic Recommendations (ACT Phase)
1. **Reposition the Leaf as an Inactivity Disruptor**
   * *Insight:* Users spend 16.6 waking hours sitting down.
   * *Execution:* Promote the Bellabeat Leaf's gentle vibration alerts as a daily anti-sedentary reminder, encouraging regular desk breaks and posture resets during work hours.

2. **Deploy "Smart Wind-Down" In-App Guides**
   * *Insight:* Consumers average ~40 minutes restless in bed before falling asleep.
   * *Execution:* Trigger automated notifications 45 minutes prior to scheduled bedtimes through the Bellabeat App, paired with guided mindfullness audio and breathing routines to improve sleep readiness.

3. **Incentivize Weekend Consistency via Gamification**
   * *Insight:* Activity levels consistently drop on weekends, with lowest numbers on Sunday.
   * *Execution:* Introduce weekend streak challenges within the Bellabeat App. Rewarding users who hit their step and sleep targets from Friday to Sunday with loyalty perks or membership credits builds seven-day engagement.
