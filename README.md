### Bellabeat Consumer Wellness Analytics

```markdown
# Bellabeat Consumer Wellness Analytics: Smart Device Usage Case Study

[![Tools](https://img.shields.io/badge/Tools-Excel%20%7C%20MySQL%20%7C%20Python%20%7C%20Power%20BI-blue)](#tech-stack--workflow)
[![Case Study](https://img.shields.io/badge/Google%20Analytics-Capstone-orange)](#business-context--core-problem)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## Executive Summary
Bellabeat manufactures high-tech, design-focused health trackers tailored for women. This analysis investigates non-Bellabeat smart wearable biometric telemetry to identify consumer activity patterns, rest behaviors, and weekly adherence drops. Findings directly inform the product positioning and retention strategy for the **Bellabeat Leaf** tracker and the **Bellabeat App** ecosystem.

### Key Performance Indicators
* **Sedentary Overload:** Users spend an average of **995 minutes (~16.6 hours)** of waking time inactive.
* **Sleep Latency Gap:** Users average **419 minutes (~7.0 hours)** of sleep per night, but spend **39.2 minutes** in bed awake/restless.
* **Weekend Slump:** Physical activity drops significantly between Friday and Sunday, with step counts bottoming out on Sunday.

---

## Business Context & Core Problem
Leadership seeks to identify how consumers utilize non-Bellabeat smart fitness devices to optimize product features and digital engagement for Bellabeat's target audience.

* **Primary Business Questions:**
  1. What behavioral trends characterize consumer smart device usage?
  2. How do these activity patterns map to Bellabeat’s core customer persona?
  3. How can data-backed insights optimize Bellabeat's marketing and engagement strategy?

---

## Tech Stack & Workflow
* **Microsoft Excel:** Initial data validation, parsing timestamps, deduplication, and baseline feature extraction.
* **MySQL:** Relational schema creation, aggregations (`AVG`, `SUM`, `COUNT`), and user segmentation logic using `CASE WHEN`.
* **Python (Pandas, NumPy, Matplotlib, Seaborn):** Exploratory data analysis, missing-value audits, and correlation matrices.
* **Power BI & Tableau:** Interactive dashboards, KPI scorecards, and day-of-week trend visualizations.

---

## Key Analytical Insights
* **Movement Distribution:** Approximately **37%** of recorded user days are categorized as Sedentary (<5,000 steps), **43%** as Low/Moderate (5,000–9,999 steps), and only **20%** as Highly Active (10,000+ steps).
* **Restless Sleep Latency:** While bed duration and total sleep show strong correlation ($r = 0.91$), users spend nearly 40 minutes per night tossing and turning before reaching deep rest.
* **The Weekend Activity Dip:** Step counts and active minutes decline sharply starting Friday afternoon, indicating a breakdown in daily health tracking routines over weekends.

---

## Strategic Recommendations
1. **Reposition the Leaf as an Inactivity Disruptor:** Promote the Bellabeat Leaf’s gentle vibration alerts as a daily anti-sedentary reminder, encouraging regular desk breaks during workday hours.
2. **Deploy "Smart Wind-Down" In-App Guides:** Trigger automated notifications 45 minutes prior to scheduled bedtimes through the Bellabeat App, paired with guided breathing routines to cut down sleep latency.
3. **Incentivize Weekend Consistency via Gamification:** Introduce weekend streak challenges within the app, rewarding users who maintain target step counts from Friday to Sunday with loyalty perks.

---

## Repository Structure
```text
├── data/
│   └── fitbit_daily_activity.csv     # Cleaned telemetry dataset
├── sql/
│   └── bellabeat_transformations.sql # Data cleaning & segmentation queries
├── python/
│   └── bellabeat_eda.ipynb           # Python notebooks for EDA and correlations
├── pbix/
│   └── bellabeat_dashboard.pbix      # Power BI dashboard file
├── docs/
│   └── executive_overview.png        # High-resolution dashboard screenshot
└── README.md
