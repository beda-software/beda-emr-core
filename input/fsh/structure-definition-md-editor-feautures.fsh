CodeSystem: MDEditorFeaturesCS
Title: "Markdown Editor Features Code System"
* #image "Image upload" "Enable image upload feature"

ValueSet: MDEditorFeaturesVS
Title: "Markdown Editor Features Value Set"
* codes from system MDEditorFeaturesCS

Extension: MDEditorFeatures
Id: mdEditorFeatures
Title: "Markdown Editor Features"
Description: "Markdown editor features extension"
* extension contains mdEditorFeature 0..*
* extension[mdEditorFeature].value[x] only code
* extension[mdEditorFeature].valueCode from MDEditorFeaturesVS (required)
* extension[mdEditorFeature] ^short = "Markdown editor feature"
