# CyberSource::Riskv1exportcomplianceinquiriesExportComplianceInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_operator** | **String** | Parts of the customer&#39;s information that must match with an entry in the DPL (denied parties list) before a match occurs. This field can contain one of the following values: - AND: (default) The customer&#39;s name or company and the customer&#39;s address must appear in the database. - OR: The customer&#39;s name must appear in the database. - IGNORE: You want the service to detect a match only of the customer&#39;s name or company but not of the address.  | [optional] 
**weights** | [**Ptsv2paymentsWatchlistScreeningInformationWeights**](Ptsv2paymentsWatchlistScreeningInformationWeights.md) |  | [optional] 
**sanction_lists** | **Array&lt;String&gt;** | Use this field to specify which list(s) you want checked with the request. The reply will include the list name as well as the response data. To check against multiple lists, enter multiple list codes separated by a caret (^). For more information, see \&quot;Restricted and Denied Parties List,\&quot; page 68.  | [optional] 


