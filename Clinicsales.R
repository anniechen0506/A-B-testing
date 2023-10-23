
rm(list = ls()) # Clear the workspace

## 1. Load the data into dataframe
clinic_data = read.csv("/Users/anniechen/Desktop/clinicsales.csv", header = TRUE)

## 2. simple summary statistics
summary(clinic_data)

## 2-1. address concerning values in column 'purchase'
clinic_data <- clinic_data[clinic_data$purchase %in% c(0, 1), ]

## 2-2. Summary again
summary(clinic_data)
num = nrow(clinic_data)
## 3. balance tests: proportion in each arm, average of pre-experiment variables
  
  clinic_data %>% group_by(treatment) %>% summarise(
    mean_doc = mean(numdoctors),
    mean_panelsize = mean(avgpanelsize),
    mean_dis = mean(distance),
    N = n(),
    prop = n()/322)
                                                  
  
## 4. calculate mean outcomes and CIs in each arm
    # formula for CI: mean +/- 1.96 * sd / sqrt(N)
  
  arm_info = clinic_data %>% group_by(treatment) %>% summarise(
    mean_p = mean(purchase),
    sd_p = sd(purchase),
    N = n(),
    lb_p = mean_p - 1.96 * sd_p / sqrt(N),
    ub_p = mean_p + 1.96 * sd_p / sqrt(N)
    )
  arm_info %>% select(treatment, mean_p, lb_p, ub_p)

  
## 5. calculate ATE and its confidence interval
  # ate = arm-mean - control group mean
  # CI: mean +/- 1.96 * sd / sqrt(N)
  # se_ate = sqrt( sd_t^2 / N_t + sd_c^2 / N_c )
  
  ate_info = arm_info %>% mutate(
    ate = mean_p - mean_p[1],
    se_ate = sqrt( sd_p^2 / N + sd_p[1]^2 / N[1]),
    lb = ate - 1.96 * se_ate,
    ub = ate + 1.96 * se_ate
    )
  ate_info %>% filter(treatment != 0) %>% select(treatment, ate, lb, ub)
  