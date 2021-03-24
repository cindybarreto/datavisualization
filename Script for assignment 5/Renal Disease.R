library(ggplot2)

read.table("figa.txt",header=T)
figa=read.table("figa.txt",header=T)
attach(figa)

figa$Hematocrit=factor(figa$Hematocrit,levels=c("<30%","30%to<33%","33%to<36%","36%to<39%",">39%","All%"))
figa$Hematocrit


# Take the darkest seven colors from 8-class ColorBrewer palette "PuBu"
colors_seven = RColorBrewer::brewer.pal(8, "BrBG")[2:8]
FigA<-ggplot(figa, aes(x = ï..Quartile, y = Mortality, fill = Hematocrit)) +
  geom_col(position = "dodge", alpha = 0.9) +
  scale_y_continuous(
    expand = c(0, 0),
    name = "Mortality Rate"
  ) +
  scale_fill_manual(values = colors_seven, name = "Hematocrit %") +
  coord_cartesian(clip = "off") +
  xlab(label = NULL) +
  theme_classic() +
  theme(
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    legend.title.align = 0.5
  ) -> p_income_age_dodged
p_income_age_dodged

