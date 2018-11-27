library(tidyverse)
library(updateR)

plotdata <- pilpres

plotdata %>%
  hchart("bar", hcaes(x = provinsi, y = suara, group = capres,
                      color = warna)) %>%
  hc_add_theme(hc_theme_smpl()) %>%
  hc_plotOptions(series = list(stacking = "normal")) %>%
  hc_legend(enabled = FALSE) %>%
  hc_exporting(enabled = TRUE) %>%
  hc_credits(enabled = TRUE, text = paste0("Sumber: https//:myeda.info, diakses pada: ", 
                                           as.character(Sys.Date())),
             href = "http://myeda.info/") %>%
  hc_title(text = "Perolehan Suara per Provinsi",
           margin = 20, align = "left",
           style = list(color = "#1C0A0A", useHTML = TRUE))
