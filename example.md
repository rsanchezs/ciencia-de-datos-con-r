<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>





You can use the `tutorial` package to convert static code chunks into 'fiddles', i.e. editors where people can experiment with your code. If you specify the `ex` and `type` properties, `tutorial` knows what to do:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhIDwtIDJcbmIgPC0gM1xuXG5hICsgYiJ9</div>

You can also create interactive exercises right inside your R Markdown document. Suppose you want to explain people how variable assignment works in R. Create an exercise with a certain identifier, `create_a` in this case. Then, in different R code chunks, specify the elements of the exercise by setting the `type` inside the code chunk options.

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJwcmVfZXhlcmNpc2VfY29kZSI6ImIgPC0gNSIsInNhbXBsZSI6IiMgQ3JlYXRlIGEgdmFyaWFibGUgYSwgZXF1YWwgdG8gNVxuXG5cbiMgUHJpbnQgb3V0IGFcbiIsInNvbHV0aW9uIjoiIyBDcmVhdGUgYSB2YXJpYWJsZSBhLCBlcXVhbCB0byA1XG5hIDwtIDVcblxuIyBQcmludCBvdXQgYVxuYSIsInNjdCI6InRlc3Rfb2JqZWN0KFwiYVwiKVxudGVzdF9vdXRwdXRfY29udGFpbnMoXCJhXCIsIGluY29ycmVjdF9tc2cgPSBcIk1ha2Ugc3VyZSB0byBwcmludCBgYWAuXCIpXG5zdWNjZXNzX21zZyhcIkdyZWF0IVwiKSJ9</div>







