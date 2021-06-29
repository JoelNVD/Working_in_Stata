/***************************************************************************************************
* PROJECTO:     Working in Stata
* TITLE:        Color Palette
* YEAR:         2021
* Student:      Joel Nestor Vicencio Danian
****************************************************************************************************

*** Outline:
	1. Introduction
		1.1 Cleaning RAM
		1.2 Data Base
	2. Colorpalette
		2.1 Install Packages
		2.2 Some configurations to graph
		2.3 Color define
	3. Examples
		3.1 Graphics

****************************************************************************************************
*** PART 1: Introduction
***************************************************************************************************/

*** 1.1 
	clear all
	clear

*** 1.2 Data Base
	sysuse auto, clear

****************************************************************************************************
*** PART 2: Colorpalette
****************************************************************************************************

*** 2.1 Install Packages
	ssc install colorpalette 
	net install cleanplots, from("https://tdmize.github.io/data/cleanplots")
	set scheme cleanplots, perm
	graph set window fontface "Arial Narrow"

*** 2.3 Color define
	colorpalette "32 25 63"  "27 64 101" "172 60 60" "228 124 124"  "224 224 224", nograph
	return list

****************************************************************************************************
*** PART 3: Examples
****************************************************************************************************

	note: you must execute the following lines with line 42

*** 3.1 Some Examples
	hist price, graphregion(color(white)) blcolor("`r(p3)'") bfcolor("`r(p4)'")

	graph twoway (lfit  price mpg, color("`r(p3)'")) (scatter price mpg,  ms(0) color("`r(p2)'"))

	kdensity price, color("`r(p1)'")
