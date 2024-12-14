{
  "Subject": {
    "commonName": {{ toJson .Subject.CommonName }},

    {{- if .Insecure.User.Subject.Country }}
      "Country": {{ toJson .Insecure.User.Subject.Country }},
    {{- else if .Insecure.CR.Subject.Country }}
      "Country": {{ toJson .Insecure.CR.Subject.Country }},
    {{- else if .Subject.Country }}
      "Country: {{ toJson .Subject.Country }},
    {{- else }}
      "Country": "undefined",
    {{- end }}

    {{- if .Insecure.User.Subject.Province }}
      "Province": {{ toJson .Insecure.User.Subject.Province }},
    {{- else if .Insecure.CR.Subject.Province }}
      "Province": {{ toJson .Insecure.CR.Subject.Province }},
    {{- else if .Subject.Province }}
      "Province": {{ toJson .Subject.Province }},
    {{- else }}
      "Province": "undefined",
    {{- end }}

    {{- if .Insecure.User.Subject.Locality }}
      "Locality": {{ toJson .Insecure.User.Subject.Locality }},
    {{- else if .Insecure.CR.Subject.Locality }}
      "Locality": {{ toJson .Insecure.CR.Subject.Locality }},
    {{- else if .Subject.Locality }}
      "Locality": {{ toJson .Subject.Locality }},
    {{- else }}
      "Locality": "undefined",
    {{- end }}

    {{- if .Insecure.User.Subject.OrganizationalUnit }}
      "OrganizationalUnit": {{ toJson .Insecure.User.Subject.OrganizationalUnit }},
    {{- else if .Insecure.CR.Subject.OrganizationalUnit }}
      "OrganizationalUnit": {{ toJson .Insecure.CR.Subject.OrganizationalUnit }},
    {{- else if .Subject.OrganizationalUnit }}
      "OrganizationalUnit": {{ toJson .Subject.OrganizationalUnit }},
    {{- else }}
      "OrganizationalUnit": "undefined",
    {{- end }}

    {{- if .Insecure.User.Subject.Organization }}
      "Organization": {{ toJson .Insecure.User.Subject.Organization }}
    {{- else if .Insecure.CR.Subject.Organization }}
      "Organization": {{ toJson .Insecure.CR.Subject.Organization }}
    {{- else if .Subject.Organization }}
      "Organization": {{ toJson .Subject.Organization }}
    {{- else }}
      "Organization": "undefined"
    {{- end }}

  },

	"basicConstraints": {
    "critical": true,
		"isCA": true,
		"maxPathLen": 0
	},

	"keyUsage": ["certSign", "crlSign"],

  "issuingCertificateURL": {{ toJson .Insecure.User.issuingCertificateURL }},

  "crlDistributionPoints": {{ toJson .Insecure.User.crlDistributionPoints }}
}
