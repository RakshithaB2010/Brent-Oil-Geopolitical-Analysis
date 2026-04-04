# Brent Crude Oil Price Analysis (2010–2026)

> Exploring how global geopolitical events influence Brent crude oil prices using Python and MySQL.

---

## Project Overview

Oil prices don't move in a vacuum — wars, sanctions, and political crises leave a visible mark on global energy markets.

In this project, I analyzed **Brent crude oil price data from 2010 to 2026** and cross-referenced it with a dataset of major geopolitical events to understand:

- How oil prices have trended over the years
- Whether geopolitical events cause noticeable price changes
- Which events and severity levels had the most impact on prices

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python | Data loading, cleaning, and visualization |
| Pandas | Data manipulation and merging datasets |
| Matplotlib & Seaborn | Charts and visual exploration |
| MySQL | Structured querying and business-level analysis |

---

## Key Analysis Performed

### Python (Pandas + Seaborn)
- Cleaned and merged oil price data with geopolitical events
- Handled missing values — days with no events flagged as `"No Event"`
- Visualized price trends, distributions, and event-based comparisons

### MySQL
- Queried average oil prices by year to identify long-term trends
- Compared average prices on **event days vs normal days**
- Ranked events by their average price impact
- Identified the **top 5 most expensive days** in the dataset
- Analyzed how **event severity** correlates with oil price levels

---

## Key Findings

- Oil prices show clear multi-year cycles with sharp rises during conflict periods
- Days with geopolitical events recorded **noticeably higher average prices** compared to normal days
- Higher severity events consistently corresponded with elevated price levels
- Certain months showed recurring spikes, suggesting seasonal and geopolitical overlap

### Oil Price Trend (2010–2026)
![Oil Price Trend](Visuals/Oil%20Price%20Trend.png)

### Oil Price: Event Days vs Normal Days
![Oil Price During Events vs Normal Days](Visuals/Oil%20Price%20During%20Events%20vs.%20Normal%20Days.png)

---

## Data Sources

- **Brent Crude Oil Prices**: [EIA (U.S. Energy Information Administration)](https://www.eia.gov) / Investing.com
- **Geopolitical Events**: Manually curated from Reuters, Wikipedia, and BBC News

---

## How to Run

1. Clone this repository
```
git clone https://github.com/RakshithaB2010/Brent-Oil-Geopolitical-Analysis.git
```

2. Install dependencies
```
pip install -r requirements.txt
```

3. Run the notebook
```
jupyter notebook Oil_analysis.ipynb
```

4. For SQL queries, import the data into MySQL and run the files in the `Queries/` folder

---
