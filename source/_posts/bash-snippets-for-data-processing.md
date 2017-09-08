---
title: Bash snippets for data processing
date: 2017-09-08 16:03:04
tags:
  - data science
  - data cleanup
  - bash
icon:
  - /images/bash.png
categories:
  - notes
---

My daily job requires writing scripts to process data, mainly stored in `csv` format. I recently found using single `bash` commands is often an easier and faster way than using `python`, `perl` or `R` for data preprocessing, for tasks like data merging, filtering, subsetting or even plotting. This notebook lists a set of utility `bash` commands by its use cases for data preprocessing.

## Merging

* Merge csv files by row without headers.

```bash
	awk 'FNR > 1' *.csv > output.csv
	```
So far the fastest way to merge csv files by rows and excluding headers (assuming the first row) in each one. See [reference](https://apple.stackexchange.com/questions/80611/merging-multiple-csv-files-without-merging-the-header).

* Append the header from a file (first row) to the beginning of the other file.

```bash
	head -n 1 input.csv | cat - other.csv > temp && temp other.csv
	```
See [reference](https://superuser.com/questions/246837/how-do-i-add-text-to-the-beginning-of-a-file-in-bash).