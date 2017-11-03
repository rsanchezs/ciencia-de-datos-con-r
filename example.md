<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>





You can use the `tutorial` package to convert static code chunks into 'fiddles', i.e. editors where people can experiment with your code. If you specify the `ex` and `type` properties, `tutorial` knows what to do:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhIDwtIDJcbmIgPC0gM1xuXG5hICsgYiJ9</div>

You can also create interactive exercises right inside your R Markdown document. Suppose you want to explain people how variable assignment works in R. Create an exercise with a certain identifier, `create_a` in this case. Then, in different R code chunks, specify the elements of the exercise by setting the `type` inside the code chunk options.

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJwcmVfZXhlcmNpc2VfY29kZSI6ImIgPC0gNSIsInNhbXBsZSI6IiMgQ3JlYXRlIGEgdmFyaWFibGUgYSwgZXF1YWwgdG8gNVxuXG5cbiMgUHJpbnQgb3V0IGEiLCJzb2x1dGlvbiI6IiMgQ3JlYXRlIGEgdmFyaWFibGUgYSwgZXF1YWwgdG8gNVxuYSA8LSA1XG5cbiMgUHJpbnQgb3V0IGFcbmEiLCJzY3QiOiJ0ZXN0X29iamVjdChcImFcIilcbnRlc3Rfb3V0cHV0X2NvbnRhaW5zKFwiYVwiLCBpbmNvcnJlY3RfbXNnID0gXCJNYWtlIHN1cmUgdG8gcHJpbnQgYGFgLlwiKVxuc3VjY2Vzc19tc2coXCJHcmVhdCFcIikifQ==</div>







