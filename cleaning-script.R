library(readr)
library(readxl)
library(tidyverse)
library(scales)

#Import 2020 Independent Expenditures ("IEs")
FEC_independent_expenditure_2020 <- read_csv("C:/Users/cknaub/Downloads/independent_expenditure_2020.csv")

#Total IEs in support of senatorial candidates.
Party_Support_2020 <- FEC_independent_expenditure_2020 %>% group_by(can_office_state, cand_name, cand_pty_aff, sup_opp) %>% 
  group_by(can_office_state, cand_pty_aff) %>%
  filter(can_office == "S", sup_opp == "S", cand_pty_aff == "DEMOCRATIC PARTY" || cand_pty_aff == "REPUBLICAN PARTY") %>% 
  summarize(Total_Amount = sum(exp_amo)) %>%
  na.omit()

write.csv(Party_Support_2020, "C:/Users/cknaub/Documents/R/2020_Indepdendent Expenditures/2020_Senate_Support.csv")

#Total IEs in opposition to senatorial candidates.
Party_Opposition_2020 <- FEC_independent_expenditure_2020 %>% group_by(can_office_state, cand_name, cand_pty_aff, sup_opp) %>% 
  group_by(can_office_state, cand_pty_aff) %>%
  filter(can_office == "S", sup_opp == "O", cand_pty_aff == "DEMOCRATIC PARTY" || cand_pty_aff == "REPUBLICAN PARTY") %>% 
  summarize(Total_Amount = sum(exp_amo)) %>%
  na.omit()

write.csv(Party_Opposition_2020, "C:/Users/cknaub/Documents/R/2020_Indepdendent Expenditures/2020_Opposion_Support.csv")
