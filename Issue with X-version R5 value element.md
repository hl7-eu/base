Issue with X-version R5 value element

I hope anyone can help me to better understing this :-)

FOr the time being n one of the R4 Observration profiles we are rpeadopting the R5 value[x] element (restricted to Attachment).

I suppose that hl7.fhir.uv.xver-r5.r4: 0.0.1-snapshot-2 was enough but if i do so sushi asks me 

error The extension http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x] requires the following dependency to be declared in your sushi-config.yaml file: hl7.fhir.extensions.r5: 4.0.1

SO if I add this dependency I'm able to compile but then seems not properly added (see image) and any time an extension in the obseravtion an error is returned. 