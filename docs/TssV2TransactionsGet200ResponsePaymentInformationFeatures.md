# CyberSource::TssV2TransactionsGet200ResponsePaymentInformationFeatures

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_funding_source** | **String** | This field contains the account funding source. Possible values:   - &#x60;CREDIT&#x60;   - &#x60;DEBIT&#x60;   - &#x60;PREPAID&#x60;   - &#x60;DEFERRED DEBIT&#x60;   - &#x60;CHARGE&#x60;  | [optional] 
**account_funding_source_sub_type** | **String** | This field contains the type of prepaid card. Possible values:   - &#x60;Reloadable&#x60;   - &#x60;Non-reloadable&#x60;  | [optional] 
**card_product** | **String** | This field contains the type of issuer product. Example values:   - Visa Classic   - Visa Signature   - Visa Infinite  | [optional] 
**message_type** | **String** | This field contains the type of BIN based authentication. Possible values:   - &#x60;S&#x60;: Single Message   - &#x60;D&#x60;: Dual Message  | [optional] 
**acceptance_level** | **String** | This field contains the acceptance level of the PAN. Possible values:   - &#x60;0&#x60; : Normal   - &#x60;1&#x60; : Monitor   - &#x60;2&#x60; : Refuse   - &#x60;3&#x60; : Not Allowed   - &#x60;4&#x60; : Private   - &#x60;5&#x60; : Test  | [optional] 
**card_platform** | **String** | This field contains the type of card platform. Possible values:   - &#x60;BUSINESS&#x60;   - &#x60;CONSUMER&#x60;   - &#x60;COMMERCIAL&#x60;   - &#x60;GOVERNMENT&#x60;  | [optional] 
**combo_card** | **String** | This field indicates the type of combo card. Possible values:   - 0 (Not a combo card)   - 1 (Credit and Prepaid Combo card)   - 2 (Credit and Debit Combo card)  | [optional] 

