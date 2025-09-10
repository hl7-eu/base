<div class="alert alert-info" style="font-size: 95%; margin-top:1em;">
  <strong>At a Glance – HL7 Europe Base and Core IG</strong>
  <ul>
    <li><strong>Layered approach:</strong> Base profiles (flexible foundation) → Core profiles (essential constraints) → Scoped IGs (domain-specific use).</li>
    <li><strong>Alignment:</strong> Supports the European Health Data Space (EHDS) and maintains consistency with international standards such as IPS.</li>
    <li><strong>Reuse:</strong>Core profiles serve as the main reference point for most HL7 Europe Implementation Guides.</li>
    <li><strong>Goal:</strong> Enable cross-border <em>consistency</em>, <em>interoperability</em>, and <em>reuse</em> across national and EU-level initiatives.</li>
  </ul>
</div>


### European Base and Core Profiles

The HL7 Europe Base and Core Implementation Guide provides a **layered approach to FHIR interoperability** in the European context.

At its foundation are **Base profiles**, which define common concepts in a flexible way. Building on these, **Core profiles** add essential constraints that can be reused across many use cases and are directly referenced by most HL7 Europe Implementation Guides.

Together with **Extensions** and **scoped HL7 EU IGs**, they form a consistent framework that supports the **European Health Data Space (EHDS)** while maintaining **alignment with international standards** such as the IPS.

<div>
<p></p>
  <figure>
    <img src="home-1.png" alt="Relationships between Base, Core, EHDS and IPS" width="65%"/>
    <figcaption><strong>Fig. 1 – HL7 Europe profiling layers: Extensions, Base, Core, and their reuse in scoped HL7 EU IGs.</strong></figcaption>
  </figure>
  <p></p>
</div>


* **Extensions**
  * Provide additional elements not part of the core FHIR specification, allowing implementers to capture information relevant in the European context but absent from the base resources and not yet available in the UV FHIR Extensions package.
* **Base profiles** define common healthcare concepts in a flexible way.
  * Act as the **baseline definitions** of commonly used concepts in Europe.
  * **Loosely constrained**, offering flexibility.
  * **Rarely used “as is”**, but serve as the foundation for Core and derived profiles.
* **Core profiles** .
  * Introduce **essential constraints** that cut across many use cases.
  * Serve as the **first reference point** for the majority of HL7 Europe FHIR Implementation Guides.
  * Can often be used **directly “as is”**, without further refinement.
  * Realize the **common EHDS logical models** and pursue **alignment with IPS** where relevant.
* **Scoped HL7 EU IGs** (e.g., **Patient Summary, Laboratory Report, Hospital Discharge Report**).
  * Reuse Core profiles to ensure **consistency and interoperability** across Europe.
  * Add domain-specific constraints and implementation details while staying grounded in the Base and Core artifacts.


<div>
<p></p>
  <figure>
    <img src="home-1.png" alt="Relationships between Base, Core, EHDS and IPS" width="65%">
    <figcaption><strong>Fig. 1 – HL7 Europe profiling layers: Extensions, Base, Core, and their reuse in scoped HL7 EU IGs.</strong></figcaption>
  </figure>
  <p></p>
</div>


### Understanding the Relationships with Base and Core Profiles

The HL7 Europe Base and Core profiles are designed to fit into both the **European Health Data Space (EHDS)** and the wider international standards landscape.

* **EHDS Logical Models** are realized through Core profiles, ensuring alignment with the EHDS framework.
* **International Patient Summary (IPS)** alignment is pursued within Core profiles to maintain global consistency.

<div>
<p></p>
  <figure>
    <img src="home-2.png" alt="Relationship between Base, Core, EHDS and IPS" width="65%">
    <figcaption><strong>Fig. 2 – Relationship between Base profiles, Core profiles, EHDS logical models, and IPS.</strong></figcaption>
  </figure>
  <p></p>
</div>

### EHDS Compatibility

The profiles are designed to support the **European Health Data Space (EHDS)** by operationalizing its **common logical models**. While informed by **eHealth Network guidelines**, variations across national and EU-level specifications are considered.

This ensures that the profiles remain:

* **General enough** to be reused across multiple initiatives.
* **Precise enough** to guarantee consistent and practical interoperability.