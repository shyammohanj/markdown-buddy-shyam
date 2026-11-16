# Reflection — BDA400 Assignment 1: Markdown Buddy

> **AI Assistance Declaration:** I used Google Gemini for ideation and writing assistance during this assignment. Prompts used: see `Appendix.md`. I verified outputs using GitHub Markdown preview, a tidyverse README comparison, and a knit test in Posit Cloud. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

## 1. How did AI assistance change your approach to writing project documentation?

Before this assignment I treated a README as something you write at the end, quickly, from memory. Working with Gemini flipped the order: I started from a structure (Overview, Installation, Example Usage, Dependencies, License) and filled in the project details, which is faster and produces something a stranger can actually navigate. The AI was most useful at the skeleton stage. The parts that make the README trustworthy, like the real file names, the actual output of `head(monthly_summary)`, and the correct install command, still had to come from me, because the AI does not know my project.

## 2. What strengths and weaknesses did you notice in the AI-assisted documentation workflow?

The strengths were speed and consistency. Gemini produced clean Markdown syntax almost every time, and its critique pass caught a code fence I had left without a language tag, which would have rendered without syntax highlighting. The weaknesses showed up as confident irrelevance: it proposed an "API Reference" section for a single-script project and generic placeholder text ("This project provides powerful analytics...") that sounds professional but says nothing. Comparing its output against a real tidyverse README (dplyr) was the most useful verification step, because it showed what experienced maintainers actually include and, just as important, what they leave out.

## 3. How will you apply ethical AI practices (attribution and validation) in future documentation work?

Two habits from this assignment are worth keeping. First, attribution as a normal part of the document, not a confession: the AI Assistance Disclosure at the bottom of my README states the tool, the prompts, and exactly what I changed afterward, which took five minutes and makes the work honest and reproducible. Second, validation before commit: every Markdown file was previewed, and the .Rmd was knitted, before anything went into the repository. I also kept real and personal data away from the AI tool entirely; the project uses a synthetic, seeded dataset, so there was nothing sensitive to leak. In future work the rule is simple: the AI can draft, but nothing ships until I have previewed it, checked it against a trusted reference, and signed my name to the disclosure.
