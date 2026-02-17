CodeSystem: MDEditorFeaturesCS
Title: "Markdown Editor Features Code System"
* #image "Image upload" "Enable image upload feature"

ValueSet: MDEditorFeaturesVS
Title: "Markdown Editor Features Value Set"
* codes from system MDEditorFeaturesCS

Extension: MDEditorFeature
Id: mdEditorFeature
Title: "Markdown Editor Feature"
Description: "Markdown editor feature extension"
* valueCode from MDEditorFeaturesVS (required)
