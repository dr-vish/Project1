
## Quarto


## Running Code

Saved .rds file

```{r}
data_frame <- readRDS("/Users/drvish/Desktop/FinalProjectBiostat213/PartA/PartA.RDS")
print(data_frame)
```

Choosing 5 categorical and 5 continuous variables: 

```{r}
df1 <- subset(data_frame, select = c(Age, Sex, Steroid, Anti_viral, Fatigue, Malaise, Alk_Phosphate, Sgot, Bilirubin, Albumin))
print(df1)
```

Making a data frame only containing categorical variables:

```{r}
df2 <- subset(data_frame, select = c(Sex, Steroid, Anti_viral, Fatigue, Malaise))
print(df2)
```

For each categorical variable, print counts for each level

```{r}
for(i in 1:ncol(df2)) {  
  print(i)
  t = as.data.frame(table(df2[, i]))
  names(t)[1] = colnames(df2[i])
  print(t)
}
```

For each categorical variable, make a mosaic plot or bar plot of counts for SEX

```{r}
mosaicplot(table(df2$Sex), main = "Males vs. Females",
           col = c("skyblue", "orchid"))
```

Make a mosaic / bar plot of counts for STEROIDS:
```{r}
mosaicplot(table(df2$Steroid), main = "Steroids Taken vs. Steroids Not Taken",
           col = c("pink", "orange"))
```

Make a mosaic / bar plot of counts for Anti_viral:
```{r}
mosaicplot(table(df2$Anti_viral), main = "Anti-virals Taken vs. Anti-virals Not Taken",
           col = c("yellow", "chartreuse"))
```

Make a mosaic / bar plot of counts for Fatigue:
```{r}
mosaicplot(table(df2$Fatigue), main = "Fatigue Present vs. No Fatigue",
           col = c("darkorange4", "darkorange"))
```

Make a mosaic / bar plot of counts for Malaise:
```{r}
mosaicplot(table(df2$Malaise), main = "Malaise Present vs. No Malaise",
           col = c("darkviolet", "deeppink4"))
```

Data frame of continuous variables:
```{r}
df3 <- subset(data_frame, select = c(Age, Alk_Phosphate, Sgot, Bilirubin, Albumin))
print(df3)
```

For each continuous variable, print mean, median, and standard deviation: For Age
```{r}
mean(df3$Age)
median(df3$Age)
sd(df3$Age)
```

For each continuous variable, print mean, median, and standard deviation: For Alk_phosphate
```{r}
mean(df3$Alk_Phosphate)
median(df3$Alk_Phosphate)
sd(df3$Alk_Phosphate)
```

For each continuous variable, print mean, median, and standard deviation: For Sgot
```{r}
mean(df3$Sgot)
median(df3$Sgot)
sd(df3$Sgot)
```

For each continuous variable, print mean, median, and standard deviation: For Bilirubin
```{r}
mean(df3$Bilirubin)
median(df3$Bilirubin)
sd(df3$Bilirubin)
```

For each continuous variable, print mean, median, and standard deviation: For Albumin
```{r}
mean(df3$Albumin)
median(df3$Albumin)
sd(df3$Albumin)
```

For each continuous variable, plot its distribution using a boxplot or a histogram (pick one type of plot and use it for all continuous variables)

```{r}
age_boxplot <- rnorm(42, 39, 12)
boxplot(age_boxplot, main = "Boxplot for Age",
        xlab= "Age", ylab= "Distribution")
```

For each continuous variable, plot its distribution using a boxplot or a histogram (pick one type of plot and use it for all continuous variables)

```{r}
alk_ph_boxplot <- rnorm(105.5, 85, 53.3)
boxplot(alk_ph_boxplot, main = "Boxplot for Alkaline Phosphate",
        xlab= "Alkaline Phosphate", ylab= "Distribution")
```


For each continuous variable, plot its distribution using a boxplot or a histogram (pick one type of plot and use it for all continuous variables)

```{r}
Sgot_boxplot <- rnorm(78.6, 56.5, 68.8)
boxplot(Sgot_boxplot, main = "Boxplot for SGOT",
        xlab= "SGOT", ylab= "Distribution")
```

For each continuous variable, plot its distribution using a boxplot or a histogram (pick one type of plot and use it for all continuous variables)

```{r}
bilirubin_boxplot <- rnorm(1.27, 1, 0.89)
boxplot(bilirubin_boxplot, main = "Boxplot for Bilirubin",
        xlab= "Bilirubin", ylab= "Distribution")
```

For each continuous variable, plot its distribution using a boxplot or a histogram (pick one type of plot and use it for all continuous variables)

```{r}
albumin_boxplot <- rnorm(3.8, 4, 0.58)
boxplot(albumin_boxplot, main = "Boxplot for Albumin",
        xlab= "Albumin", ylab= "Distribution")
```

The `echo: false` option disables the printing of code (only output is displayed).
