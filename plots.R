#Plot total IEs spent per seat by candidate party affiliation.

#Total IES spent per seat in support of candidates.
ggplot(Party_Support_2020) +
  geom_col(aes(x = can_office_state, y = Total_Amount, fill = cand_pty_aff)) +
  scale_fill_manual(labels = c("Democrat", "Republican"),values = c(rgb(0,0,1,0.5), rgb(1,0,0,0.5))) +
  scale_y_continuous(labels = dollar) +
  labs(title = 'Independent Expenditures - 2020 US Senate', 
       subtitle = 'Total spent in support of senatorial candidates. ',
       fill = "Candidate Party Affiliation",
       x = "Senate Race", 
       y = "Total Amount")

#Total IES spent per seat in opposition to candidates.
ggplot(Party_Opposition_2020) +
  geom_col(aes(x = can_office_state, y = Total_Amount, fill = cand_pty_aff)) +
  scale_fill_manual(labels = c("Democrat", "Republican"), values = c(rgb(0,0,1,0.5), rgb(1,0,0,0.5))) +
  scale_y_continuous(labels = dollar) +
  labs(title = 'Independent Expenditures - 2020 US Senate', 
       subtitle = 'Total spent in opposition to senatorial candidates. ',
       fill = "Candidate Party Affiliation",
       x = "Senate Race", 
       y = "Total Amount")


