
import "strings"

import "list"

let splits = strings.Split(id, ":")
let domainId = splits[3]
let majorVersion = splits[5]

#ComponentVersion: string & =~"^([0-9]+\\.[0-9]+\\..+)$"
#Id:               string & =~"^[a-zA-Z0-9:._\\-]+$"
#ComponentId:      #Id & =~"^urn:dmb:cmp:\(domainId):[a-zA-Z0-9_\\-]+:\(majorVersion):[a-zA-Z0-9_\\-]+$"

#BigQuery_DataType: string & =~"(?i)^(STRING|INTEGER|FLOAT|NUMERIC|BIGNUMERIC|BOOLEAN|TIMESTAMP|DATE|TIME|DATETIME|JSON|GEOGRAPHY|BYTES)$"
#RoundingMode:      string & =~"(?i)^(ROUNDING_MODE_UNSPECIFIED|ROUND_HALF_AWAY_FROM_ZERO|ROUND_HALF_EVEN)$"
#OM_Tag: {
	tagFQN!:      string
	description?: string | null
	source!:      string & =~"(?i)^(Classification|Glossary)$"
	labelType!:   string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state!:       string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
	...
}

#BigQuery_Column: {
	name!:       string
	dataType!:   #BigQuery_DataType
	constraint?: string & =~"(?i)^(NULLABLE|REQUIRED|REPEATED)$" | null
	if dataType =~ "(?i)^(STRING|BYTES)$" {
		dataLength?: int & >0 | null
	}
	if dataType =~ "(?i)^(NUMERIC)$" {
		scale?:        int & >=0 & <=9
		precision?:    int & >0 & >scale & <=(scale + 29)
		roundingMode?: #RoundingMode | null
	}
	if dataType =~ "(?i)^(BIGNUMERIC)$" {
		scale?:        int & >=0 & <=38
		precision?:    int & >0 & >scale & <=(scale + 38)
		roundingMode?: #RoundingMode | null
	}
	description?: string | null
	tags?: [... #OM_Tag]
	...
}

name!:                     string
fullyQualifiedName?:       string | null
description!:              string
id:                        #ComponentId
kind!:                     "storage"
version!:                  #ComponentVersion
infrastructureTemplateId!: string
useCaseTemplateId!:        string
dependsOn?:                [...string]
platform!:                 "GCP"
technology!:               "BigQuery"
storageType!:              "SQL"
tags?:                     [...#OM_Tag]
readsFrom?:                [...string]

specific: {
  project!:        string
  dataset!:        string
  schema: 		   [...#BigQuery_Column]
  ownerRoles:      [...string]
  tableName!:      string
}
