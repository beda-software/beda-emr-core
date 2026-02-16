CodeSystem: SortOrderCS
Title: "Sort Order Code System"
* #asc "Ascending" "Sort the items in increasing order."
* #desc "Descending" "Sort the items in decreasing order."

ValueSet: SortOrderVS
Title: "Sort Order Value Set"
* codes from system SortOrderCS

Extension: DefaultSort
Id: defaultSort
Title: "Default Sort"
Description: "Default sort extension"
* extension contains
    linkId 1..1 and
    sort 1..1
* extension[linkId].value[x] only string
* extension[linkId] ^short = "Link ID for default sort column"
* extension[sort].value[x] only code
* extension[sort].valueCode from SortOrderVS (required)
* extension[sort] ^short = "Default sort order"
