Extension: EnableChart
Id: enable-chart
Title: "Enable Chart"
Description: "Enable chart extension"
* ^url = "https://emr-core.beda.software/StructureDefinition/enable-chart"
* extension contains
    link-id-x 1..1 and
    link-id-y 1..1
* extension[link-id-x].value[x] only string
* extension[link-id-x] ^short = "Link ID for the X-axis"
* extension[link-id-y].value[x] only string
* extension[link-id-y] ^short = "Link ID for the Y-axis"
