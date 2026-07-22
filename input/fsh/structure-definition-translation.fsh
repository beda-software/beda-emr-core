Extension: Translation
Id: translation
Title: "Translation"
Description: "Language translation from base language of resource to another language, used to provide translations for strings, including markdown. Generally, the type of the translation extension SHOULD match that of the element being extended."
* ^url = "http://hl7.org/fhir/StructureDefinition/translation"
* extension contains
    lang 1..1 and
    content 1..1
* extension[lang] only Extension
* extension[lang] ^short = "Code for Language"
* extension[lang] ^definition = "Code for Language."
* extension[lang].url only uri
* extension[lang].value[x] 1..
* extension[lang].value[x] only code
* extension[lang].value[x] from AllLanguages (required)
* extension[content] only Extension
* extension[content] ^short = "Content in other Language"
* extension[content] ^definition = "Content in other Language."
* extension[content] ^comment = "The type (string or markdown) must match the context in which it is used."
* extension[content].url only uri
* extension[content].value[x] 1..
* extension[content].value[x] only string or markdown
* url = "http://hl7.org/fhir/StructureDefinition/translation" (exactly)
