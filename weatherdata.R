

##Libraries
library(stats)
library(plyr)
library(dplyr)
library(tidyr)
library(forcats)
library(ggplot2)
library(RColorBrewer)
library(ggpubr)



#working directory and datasets

#setwd("~/nkstrong_test")

WaterYear<-read.csv("xmACIS2_WaterYrSummary_3-7-2024.csv", stringsAsFactors=T)


#Water Year Plot
WaterYearPlot<-WaterYear %>%
  ggplot( aes(y=TotalPrecip, x=WaterYear2))+ 
  geom_bar(stat="identity",position="dodge",color="black", linewidth=0.1)+
  scale_color_brewer(palette="Paired")+
  labs(x="Water Year", y="Total Precipitation (inches)", title="USSES Water Year Total Precipitation, October 1-September 30, 1925-2024")+
  scale_x_continuous(labels=scales::label_wrap(12),breaks = seq(from=1925, to = 2025, by = 10))+
  scale_y_continuous(breaks=seq(0,26, by=2))
  guides(x=guide_axis(angle=45))+
  theme(axis.text = element_text(size=12), 
        axis.title = element_text(face="bold", size = 12), plot.title=element_text(face="bold",hjust=0.5,size=12))
WaterYearPlot






