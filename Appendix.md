# Appendix — AI Prompts, Key Responses, and Verification Notes

**AI tool:** Google Gemini (free web version, gemini.google.com) — November 2026.

---

## Step 1 — Understanding README structure

**Prompt 1 (Seed):** "Explain what sections a good GitHub README for an R data analysis project should include."

**Key response (summarized):** a strong R project README includes a title and one-line description, Overview/Motivation, Installation (including `install.packages()` for dependencies), Example Usage with runnable code, project structure, dependency list, license, and contact/attribution. Badges and screenshots are optional polish.

**Prompt 2 (Refinement):** "Revise the sections list so it's concise and uses Markdown headers and bullet formatting."

**Key response:** a compact outline using `#`/`##` headers with one-line bullets per section (reproduced below as my planned outline).

**Prompt 3 (Critique/Validation):** "Check the Markdown syntax for correctness and readability."

**Key response:** syntax valid; suggested keeping header levels consistent (one `#` title, `##` for sections) and always tagging fenced code blocks with a language.

### My planned README outline (Step 1 expected artifact)

```text
# Project Title (one-line description)
## Overview
## Installation
## Example Usage
## Project Structure
## Dependencies
## License
## AI Assistance Disclosure
```

**Verification check (Step 1):** compared this outline against the tidyverse `dplyr` README on GitHub. Matches: Overview, Installation, Usage, and a link-rich footer. Differences: dplyr adds badges and a "Getting help" section (appropriate for a large package, skipped here); dplyr has no license section in the README body because the license is a separate file — I kept a short License section since this is a one-page student repo.

---

## Step 2 — Generating README.md

**Prompt 4 (Seed):** "Here's a summary of my R project: a single R script that generates synthetic retail sales data, cleans it with dplyr, summarizes monthly revenue by category, and plots the trend with ggplot2. Generate a professional README.md file using Markdown."

**Key response:** full README draft with title, overview, features, installation, usage, and contributing sections.

**Prompt 5 (Refinement):** "Add sections for Installation, Example Code, and License. Keep tone concise and professional."

**Key response:** added the three sections; Example Code used an untagged code fence.

**Prompt 6 (Critique/Validation):** "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

**Key response:** flagged the untagged code fence (fixed to ` ```r `); suggested (1) a dependency table instead of a bullet list and (2) a project structure tree — both applied in the final README.

**My edits beyond the AI output:** replaced generic descriptions with actual file names and behaviour; removed a proposed "API Reference" section (not applicable to a one-script project); wrote the AI Assistance Disclosure section myself.

**Verification check (Step 2):** pasted the final README into GitHub and confirmed in preview that all headers, the two tables, the tree block, and the three code blocks render correctly.

---

## Step 3 — Documenting the script with R Markdown

**Prompt 7 (Seed):** "Here's my R script description. Suggest Markdown formatting and code block examples." *(script description pasted: synthetic data generation, dplyr cleaning/summary, ggplot2 trend chart)*

**Key response:** suggested YAML header, fenced `{r}` chunks mirroring each stage of the script, and a table for outputs.

**Prompt 8 (Refinement):** "Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs)."

**Key response:** reorganized into `# Purpose`, `## Inputs`, `## Processing Steps`, `## Outputs`, `## How to Run` — adopted as-is.

**Prompt 9 (Critique/Validation):** "Is the Markdown consistent with RMarkdown best practices?"

**Key response:** yes, with two notes applied: name each chunk (`{r clean}`, `{r plot}`) and use `eval=FALSE` for chunks that mirror an external script, so the document knits quickly and the script stays the single source of truth.

**Verification check (Step 3):** knitted `sales_analysis.Rmd` to HTML in Posit Cloud; all headers, named chunks, and the outputs table render correctly.

---

## Verification Pattern (per AI Usage Rules)

- **(a) Primary check:** GitHub Markdown preview of README.md, Reflection.md, and this file; knit of sales_analysis.Rmd.
- **(b) Independent cross-check:** structure compared against the tidyverse `dplyr` README; ran `sales_analysis.R` end-to-end in Posit Cloud and confirmed `monthly_summary` has 48 rows (12 months x 4 categories) and `monthly_trend.png` is created.
- **(c) Self spot-check:** re-read every AI-assisted passage against the actual script behaviour; corrected the example output block to match the script's real column names (`month, category, revenue, orders`).

No real or personal data was shared with the AI tool at any point; the dataset is synthetic and generated in-script with `set.seed(400)`.
