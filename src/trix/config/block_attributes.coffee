Trix.config.blockAttributes = attributes =
  default:
    tagName: "p"
    parse: false
  h1:
    tagName: "h1"
    singleLine: true
  h2:
    tagName: "h2"
    singleLine: true
  h3:
    tagName: "h3"
    singleLine: true
  h4:
    tagName: "h4"
    singleLine: true
  h5:
    tagName: "h5"
    singleLine: true
  h6:
    tagName: "h6"
    singleLine: true
  quote:
    tagName: "blockquote"
    nestable: true
  code:
    tagName: "pre"
    text:
      plaintext: true
  bulletList:
    tagName: "ul"
    parse: false
  bullet:
    tagName: "li"
    listAttribute: "bulletList"
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
  numberList:
    tagName: "ol"
    parse: false
  number:
    tagName: "li"
    listAttribute: "numberList"
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
