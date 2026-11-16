# ============================================================
# sales_analysis.R
# Purpose : Generate synthetic retail sales data, summarize
#           monthly revenue by category, and plot the trend.
# Author  : Shyam Mohan Jayamohan (BDA400 - Assignment 1)
# Data    : 100% synthetic, generated below with set.seed().
#           No real or personal data is used anywhere.
# ============================================================

library(dplyr)
library(ggplot2)
library(lubridate)

# ---- 1. Generate synthetic sales data -----------------------
set.seed(400)  # reproducible synthetic data

n_orders <- 2400
sales <- tibble(
  order_id   = sprintf("ORD-%05d", 1:n_orders),
  order_date = as.Date("2025-01-01") + sample(0:364, n_orders, replace = TRUE),
  category   = sample(c("Grocery", "Household", "Snacks", "Beverages"),
                      n_orders, replace = TRUE,
                      prob = c(0.40, 0.25, 0.20, 0.15)),
  amount     = round(rlnorm(n_orders, meanlog = 3.9, sdlog = 0.45), 2)
)

# ---- 2. Clean ------------------------------------------------
# Remove impossible values (defensive check; synthetic data is clean)
sales_clean <- sales %>%
  filter(amount > 0, !is.na(order_date))

# ---- 3. Summarize monthly revenue by category ---------------
monthly_summary <- sales_clean %>%
  mutate(month = floor_date(order_date, "month")) %>%
  group_by(month, category) %>%
  summarise(revenue = sum(amount),
            orders  = n(),
            .groups = "drop")

print(head(monthly_summary, 8))

# ---- 4. Plot the trend --------------------------------------
trend_plot <- ggplot(monthly_summary,
                     aes(x = month, y = revenue, colour = category)) +
  geom_line(linewidth = 1) +
  geom_point(size = 1.6) +
  labs(title = "Monthly Revenue by Category (Synthetic Data, 2025)",
       x = "Month", y = "Revenue ($)", colour = "Category") +
  theme_minimal()

ggsave("monthly_trend.png", trend_plot, width = 9, height = 5, dpi = 150)

message("Done: monthly_summary created and monthly_trend.png saved.")
