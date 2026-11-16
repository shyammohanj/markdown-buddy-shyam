> **AI Assistance Declaration:** I used Google Gemini for ideation on README structure, Markdown layout suggestions, and writing assistance. Prompts used: see `Appendix.md` (full prompt/response log). I verified outputs using GitHub's Markdown preview, a comparison against the tidyverse `dplyr` README structure, and a knit test of the .Rmd in Posit Cloud. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Sales Trend Analyzer (R)

A small, self-contained R project that generates a **synthetic** retail sales dataset, cleans it, summarizes monthly revenue, and produces a trend chart. Built as a documentation exercise for BDA400 (Data Science Tools and Techniques).

## Overview

The project answers one question from synthetic data: *how does monthly revenue trend across a year, and which product category drives it?*

- `sales_analysis.R` — the single analysis script (generates its own synthetic data; no external or personal data is used).
- `sales_analysis.Rmd` — R Markdown documentation for the script (purpose, inputs, outputs, walkthrough).
- `Reflection.md` — answers to the assignment reflection questions.
- `Appendix.md` — AI prompt/response log and verification notes.

## Installation

```r
# Requires R >= 4.1
install.packages(c("dplyr", "ggplot2", "lubridate"))
```

Clone the repository and open it in RStudio or Posit Cloud:

```bash
git clone https://github.com/<your-username>/markdown-buddy-shyam.git
```

## Example Usage

```r
# From the project root:
source("sales_analysis.R")

# Outputs created:
#   monthly_summary   - data frame of revenue by month and category (in your environment)
#   monthly_trend.png - revenue trend chart saved to the project folder
```

A quick look at the summary:

```r
head(monthly_summary)
#>   month    category   revenue  orders
#>   2025-01  Grocery    12480.5     214
#>   2025-01  Household   8012.3     131
#>   ...
```

## Project Structure

```text
markdown-buddy-shyam/
├── README.md            # This file
├── sales_analysis.R     # Analysis script (synthetic data)
├── sales_analysis.Rmd   # R Markdown documentation of the script
├── Reflection.md        # Reflection questions
└── Appendix.md          # AI prompts, responses, verification notes
```

## Dependencies

| Package   | Used for                      |
|-----------|-------------------------------|
| dplyr     | Data cleaning and summarizing |
| ggplot2   | Trend visualization           |
| lubridate | Date handling                 |

## License

MIT License — free to use, modify, and distribute with attribution.

---

## AI Assistance Disclosure

- **AI tool used:** Google Gemini (free web version, gemini.google.com), November 2026.
- **Main prompts given:**
  1. "Explain what sections a good GitHub README for an R data analysis project should include."
  2. "Revise the sections list so it's concise and uses Markdown headers and bullet formatting."
  3. "Check the Markdown syntax for correctness and readability."
  4. "Here's a summary of my R project: a single R script that generates synthetic retail sales data, cleans it with dplyr, summarizes monthly revenue by category, and plots the trend with ggplot2. Generate a professional README.md file using Markdown."
  5. "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
  6. "Review the Markdown for syntax errors and suggest 2 improvements for clarity."
- **Changes I made after reviewing the outputs:** replaced Gemini's generic project description with my actual script and file names; corrected a fenced code block that was missing its language tag (` ```r `); converted a plain dependency list into the table above (one of Gemini's two suggested clarity improvements); added the Project Structure tree (the second suggestion); removed an "API Reference" section Gemini proposed that does not apply to a single-script project; and verified every section renders correctly in GitHub preview before committing.
