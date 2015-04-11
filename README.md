## Exploratory Data Analysis: Course Project 1

To generate the graphs, use

```
for i in 1 2 3 4; do R --no-save < plot$i.R; done
```

To view the graphs on MacOS, use

```
open plot*.png
```

Downloading and parsing of the data is common to all the plots, so it was refactored into the load_data.R file.
