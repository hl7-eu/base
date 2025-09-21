
<!-- 
extensions

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "complex-type" and sd.type != "Extension" -%}
   <li> <a href="{{sd.path}}">{{sd.name}}</a>{{sd.title}}. {{sd.description}} </li>
  {%- endif -%}
{%- endfor -%} -->


Logical data models or information models for EHDS are created by the [Xt-EHR project](https://www.xt-ehr.eu/).

These models are refined and enhanced versions of the [eHN Guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) data sets.

This IG aims to conform to EHDS logical models, and provide the HL7 FHIR profiles based on these models.

The currently available EHDS draft logical models used for this version of the guide are reported for convenience in this Implementation Guide and listed below.

The most recent, in-development version of the models can be seen in the [Xt-EHR EHDS Logical Information Models](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) IG.

### Model lists


<ul>
{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
   <li> <a href="{{sd.path}}">{{sd.name}}</a>: {{sd.title}}. {{sd.description}} </li>
  {%- endif -%}
{%- endfor -%}
</ul>