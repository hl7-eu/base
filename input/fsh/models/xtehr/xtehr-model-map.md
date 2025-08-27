# humanName

| Logical Model | Unnamed: 1 | Implementation | Unnamed: 3 | Unnamed: 4 |
| --- | --- | --- | --- | --- |
| humanName |  | HumanName |  |  |
| Element | Description | Element | Description | Notes |
| use | Use | use | Name Use | equal |
| text | Text | text | Text representation of the full name | equal |
| family | Family | family | Family name (often called 'Surname') | equal |
| given | Given | given | Given names (not always 'first'). Includes middle names | equal |
| prefix | Prefix | prefix | Parts that come before the name | equal |
| suffix | Suffix | suffix | Parts that come after the name | equal |


# location

| Logical Model | Unnamed: 1 | Implementation | Unnamed: 3 | Unnamed: 4 |
| --- | --- | --- | --- | --- |
| location |  | LocationEu |  |  |
| Element | Description | Element | Description | Notes |
| identifier | Identifier | identifier | Unique code or number identifying the location to its users | equal |
| name | Name | name | Location name | equal |
| description | Description | telecom | Location telecom | equal |
| type | Type | physicalType | Location type | equal |
| address | Address | address | Physical location | equal |
| managingOrganisation | Managing organisation | managingOrganization | Managing organization | equal |
| partOf | Part of | partOf | Another Location this one is physically a part of | equal |


# organisation

| Logical Model | Unnamed: 1 | Implementation | Unnamed: 3 | Unnamed: 4 |
| --- | --- | --- | --- | --- |
| organisation |  | OrganizationEuCore |  |  |
| Element | Description | Element | Description | Notes |
| identifier | Identifier | identifier | Identifies this organization across multiple systems | equal |
| type | Type | type | Organization type | equal |
| name | Name | name | Name of the organization | equal |
| address | Address | address | An address for the organization | equal |
| telecom | Telecom | telecom | Organization telecom | equal |
| partOf | Part of | partOf | The organization of which this organization is part of: e.g. an ERN | equal |
|  |  | contact | Organization contact infos | Missing in the model |