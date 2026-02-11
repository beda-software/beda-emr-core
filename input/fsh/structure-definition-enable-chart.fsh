Extension: EnableChart
Id: enableChart
Title: "Enable Chart"
Description: "Enable chart extension"
* extension contains
    linkIdX 1..1 and
    linkIdY 1..1
* extension[linkIdX].value[x] only string
* extension[linkIdX] ^short = "Link ID for the X-axis"
* extension[linkIdY].value[x] only string
* extension[linkIdY] ^short = "Link ID for the Y-axis"
