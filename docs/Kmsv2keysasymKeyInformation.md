# CyberSource::Kmsv2keysasymKeyInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **String** | Merchant Id  | 
**reference_number** | **String** | Reference number is a unique identifier provided by the client along with the organization Id. This is an optional field provided solely for the client&#39;s convenience. If client specifies value for this field in the request, it is expected to be available in the response.  | [optional] 
**cert** | **String** | Certificate Signing Request(csr), one needs to use the contents of the csr created for the same organizationId. Please extract string from &#39;\\n&#39; and &#39;-----BEGIN CERTIFICATE REQUEST-----&#39;,&#39;-----END CERTIFICATE REQUEST-----&#39;  | 


