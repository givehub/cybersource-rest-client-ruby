=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PaymentProductsCardProcessingConfigurationInformationConfigurationsCommonProcessors
    # Determines the batching group that separates merchants for special batching times. Batching groups can separate merchant batches by the following criteria:  * Timezone * Merchant deadlines * Large merchants (top 10) * Merchants with Service-Level Agreements  Applicable for Chase Paymentech Salem (chasepaymentechsalem), Streamline (streamline2), Six (six), Barclays (barclays2), Paymentech Tampa (paymentechtampa), CMCIC (cmcic), FDC Nashville (smartfdc), RUPAY, American Express Direct (amexdirect), GPN (gpn), VPC, GPX (gpx), CB2A, Barclays HISO (barclayshiso), TSYS (tsys) and FDI Global (fdiglobal) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th></tr></thead> <tr><td>Barclays</td><td>cnp, cp, hybrid</td><td>Yes</td></tr> <tr><td>Barclays HISO</td><td>cnp, cp, hybrid</td><td>Yes</td></tr> <tr><td>American Express Direct</td><td>cnp, cp, hybrid</td><td>No</td></tr> </table> 
    attr_accessor :batch_group

    # Indicates the type of money transfer used in the transaction. Applicable for VPC and GPX (gpx) processors.
    attr_accessor :business_application_id

    # Identify merchants that participate in Select Merchant Fee (SMF) programs. Unique to the merchant. Applicable for GPX (gpx) and VPC processors.
    attr_accessor :merchant_verification_value

    # Routing Number to identify banks within the United States. Applicable for GPX (gpx) processors.
    attr_accessor :aba_number

    attr_accessor :acquirer

    # Merchant ID assigned by an acquirer or a processor. Should not be overriden by any other party.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Min. Length</th><th>Max. Length</th><th>Regex</th></tr></thead> <tr><td>Barclays HISO</td><td>cp, cnp, hybrid</td><td>Yes</td><td>1</td><td>15</td><td>^[0-9a-zA-Z]+$</td></tr> <tr><td>Barclays</td><td>cp, cnp, hybrid</td><td>Yes</td><td>1</td><td>11</td><td>^[0-9a-zA-Z]+$</td></tr> </table> 
    attr_accessor :merchant_id

    # The 'Terminal Id' aka TID, is an identifier used for with your payments processor. Depending on the processor and payment acceptance type this may also be the default Terminal ID used for Card Present and Virtual Terminal transactions.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Min. Length</th><th>Max. Length</th><th>Regex</th></tr></thead> <tr><td>Barclays HISO</td><td>cnp, hybrid</td><td>Yes</td><td>1</td><td>16</td><td>^[0-9a-zA-Z]+$</td></tr> <tr><td>Barclays HISO</td><td>cp</td><td>No</td><td>1</td><td>16</td><td>^[0-9a-zA-Z]+$</td></tr> </table> 
    attr_accessor :terminal_id

    # Valid values are: * VISA * MASTERCARD * AMERICAN_EXPRESS * CUP * EFTPOS * DINERS_CLUB * DISCOVER * JCB 
    attr_accessor :payment_types

    # Three-character [ISO 4217 ALPHA-3 Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf)
    attr_accessor :currencies

    # The Standard Industrial Classification (SIC) are four-digit codes that categorize the industries that companies belong to based on their business activities. Standard Industrial Classification codes were mostly replaced by the six-digit North American Industry Classification System (NAICS). Applicable for VPC and GPX (gpx) processors.
    attr_accessor :sic_code

    # Allows multiple captures for a single authorization transaction. Applicable for Paymentech Tampa (paymentechtampa), VPC, American Express Direct (amexdirect) and GPX (gpx) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, hybrid</td><td>Yes</td><td>No</td></tr> <tr><td>American Express Direct</td><td>cnp</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :allow_multiple_bills

    # Enables partner to enable/disable merchant descriptors values. Applicable for VPC, EFTPOS and CUP processors.
    attr_accessor :allow_merchant_descriptor_override

    # To enable airline transactions. Applicable for TSYS (tsys), VPC, Elavon Americas (elavonamericas), FDI Global (fdiglobal), GPX (gpx), Barclays (barclays2) and American Express Direct (amexdirect) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th></tr></thead> <tr><td>Barclays</td><td>cnp, cp, hybrid</td><td>No</td></tr> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td></tr> </table> 
    attr_accessor :enhanced_data

    # Indicates whether the merchant is compliant with Hotel and Motel Fire Safety Act of 1990. Applicable for GPX (gpx) and VPC processors.
    attr_accessor :fire_safety_indicator

    # To enable quasi-cash transactions. A quasi-cash transaction is a cash-like transaction for the sale of items that are directly convertible to cash, such as:- Casino gaming chips, Money orders, Wire transfers.  Applicable for GPX (gpx), TSYS (tsys), Barclays (barclays2) and VPC processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>Barclays</td><td>cnp, cp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :quasi_cash

    # Identifier assigned by the acquirer. Applicable for RUPAY, VPC and Six (six) processors.
    attr_accessor :acquirer_merchant_id

    # Enables Enhanced AVS/Automated Address Verification Plus (AAV+).  Valid values: \"basic\" - Standard address verification system.   When a processor supports AVS for a transaction’s card type, the issuing bank uses AVS to confirm that the customer has provided the correct billing address.   When a customer provides incorrect information, the transaction might be fraudulent. \"basic + name\" - Enhanced address verification system.   Consists of the standard AVS functionality plus verification of some additional fields.   The additional fields that are verified for Enhanced AVS are:   - customer_firstname   - customer_lastname \"basic + name + shipto\" - Automated address verification plus.   Consists of the Enhanced AVS functionality plus verification of some additional fields.   AAV+ intended for merchants who deliver physical goods to a different address than the billing address.   AAV+ verifies the additional fields only when the standard and Enhanced AVS tests pass first.   For information about Enhanced AVS - The additional fields that are verified for AAV+ are:   - ship_to_firstname   - ship_to_lastname   - ship_to_address1   - ship_to_country   - ship_to_zip   - ship_to_phone   - customer_phone(American Express Direct only)  Applicable for American Express Direct (amexdirect) processor.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cnp, cp, hybrid</td><td>Yes</td><td>basic</td></tr> </table> 
    attr_accessor :avs_format

    # Amex Direct specific merchant config value which determines what length (either 9 or Unique 12-char reference number) of reference number will be CYBS generated if the merchant does not pass in a trans_ref_no. Can be any combination of alpha, numeric and special characters, and/or binary data in hexadecimal.  Applicable for American Express Direct (amexdirect) processor.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :enable_long_trans_ref_no

    # Field that indicates whether merchant will send level 2 data for Amex cards. Applicable for American Express Direct (amexdirect) processor.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :enable_level2

    # This flag related to multiple transaction advice addendum field. It is used to display descriptive information about a transaction on customer’s American Express card statement. Applicable for American Express Direct (amexdirect) processor.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :enable_multiple_transaction_advice_addendum

    # Advice addendum field. It is used to display descriptive information about a transaction on customer’s American Express card statement. Applicable for TSYS (tsys), FDI Global (fdiglobal) and American Express Direct (amexdirect) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Min. Length</th><th>Max. Length</th><th>Regex</th></tr></thead> <tr><td>American Express Direct</td><td>cnp, cp, hybrid</td><td>No</td><td>1</td><td>40</td><td>^[0-9a-zA-Z&#92;-\\s.]+$</td></tr> </table> 
    attr_accessor :amex_transaction_advice_addendum1

    # This flag is related to offer/line item details to be included instead of sending one line item, and a grand total. Example, offer0, offer 1...offer n. Applicable for American Express Direct (amexdirect) and Elavon Americas (elavonamericas) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :enable_multi_line_items

    # To enable merchant to send in transaction reference number (unique reconciliation ID). Applicable for VPC, Vero (vero), FDI Global (fdiglobal), Six (six), CB2A, CUP, VPC, Chase Paymentech Salem (chasepaymentechsalem), Fiserv (fiserv), Elavon Americas (elavonamericas) and EFTPOS processors.
    attr_accessor :enable_transaction_reference_number

    # Enables to meet the Visa mandate requirements to reverse unused authorizations, benefitting the customer by releasing the hold on unused credit card funds. Applicable for CB2A, Elavon Americas (elavonamericas), Six (six), VPC and American Express Direct (amexdirect) processors.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>American Express Direct</td><td>cp, cnp, hybrid</td><td>No</td><td>No</td></tr> </table> 
    attr_accessor :enable_auto_auth_reversal_after_void

    # When this is enabled, authorization responses from American Express expresspay transactions include the Primary Account Number (PAN) and expiration date of the card. Applicable for American Express Direct (amexdirect) processor.
    attr_accessor :enable_expresspay_pan_translation

    # Authorizes a credit. Reduces refund chargebacks and prevents customers from seeing the online update for credits which are otherwise offline settlements.
    attr_accessor :enable_credit_auth

    # Field used to identify the industry type of the merchant submitting the authorization request.  Valid values: `0` – unknown or unsure `A` – auto rental (EMV supported) `B` – bank/financial institution (EMV supported) `D` – direct marketing `F` – food/restaurant (EMV supported) `G` – grocery store/super market (EMV supported) `H` – hotel (EMV supported) `L` – limited amount terminal (EMV supported) `O` – oil company/automated fueling system (EMV supported) `P` – passenger transport (EMV supported) `R` – retail (EMV supported) Applicable for TSYS (tsys), RUPAY and Elavon Americas (elavonamericas) processors. 
    attr_accessor :industry_code

    # Field that indicates whether merchant will send level 2 data for Amex cards. Applicable for TSYS (tsys) processor.
    attr_accessor :send_amex_level2_data

    # A soft descriptor is a text, rendered on a cardholder’s statement, describing a particular product or service, purchased by the cardholder. Descriptors are intended to help the cardholder identify the products or services purchased. Valid values: `1` - trans_ref_no `2` - merchant_descriptor `3` - trans_ref_no and merchant_descriptor Applicable for TSYS (tsys) processor. 
    attr_accessor :soft_descriptor_type

    # V-number provided by TSYS info. The leading `V` must be replaced by a `7`. For example, replace `V1234567` with `71234567`. Applicable for TSYS (tsys) processor.
    attr_accessor :vital_number

    # 6 digit agent bank number provided by acquirer. Applicable for TSYS (tsys) processor.
    attr_accessor :bank_number

    # 6 digit chain number provided by acquirer. Applicable for TSYS (tsys) processor.
    attr_accessor :chain_number

    # 6 digits acquirer bank identification number. Applicable for TSYS (tsys) processor.
    attr_accessor :merchant_bin_number

    # 5 digit merchant location number. Unless otherwise specified by merchant’s bank or processor, this field should default to 00001. Applicable for TSYS (tsys) processor.
    attr_accessor :merchant_location_number

    # 4 digits number used to identify a specific merchant store location within the member systems. Applicable for TSYS (tsys) processor.
    attr_accessor :store_id

    # Contains travel agency code if airline ticket was issued by a travel agency. Applicable for TSYS (tsys) processor.
    attr_accessor :travel_agency_code

    # Contains travel agency name if airline ticket was issued by travel agency. Applicable for TSYS (tsys) processor.
    attr_accessor :travel_agency_name

    # This field is used to indicate Merchant's settlement currency. [ISO 4217 ALPHA-3 Standard Currency Codes] Applicable for TSYS (tsys) and Streamline (streamline2) processors.
    attr_accessor :settlement_currency

    # Indicates whether Least Cost Routing is enabled. Applicable for EFTPOS and CUP processors.
    attr_accessor :enable_least_cost_routing

    # This field denotes EFTPOS Merchant's choice of receiving CVV Processing Response in return. Applicable for EFTPOS processors.
    attr_accessor :enable_cvv_response_indicator

    # Applicable for Barclays (barclays2) processor.  Validation details (for selected processors)...  <table> <thead><tr><th>Processor</th><th>Acceptance Type</th><th>Required</th><th>Default Value</th></tr></thead> <tr><td>Barclays</td><td>cnp, cp, hybrid</td><td>No</td><td>Yes</td></tr> </table> 
    attr_accessor :enable_multi_currency_processing

    # ‘POS Network Switching’ or ‘Alternate Routing’ means merchant can process PIN Debit transactions without a PIN. Set the value to ‘Yes’ if it is supported. Applicable for FDI Global (fdiglobal) processor.
    attr_accessor :enable_pos_network_switching

    # Enable dynamic currency conversion for a merchant.
    attr_accessor :enable_dynamic_currency_conversion

    # Merchant Tier defines the type of merchant, the numeric Merchant Tier value is allocated by EFTPOS. Applicable for EFTPOS processors.
    attr_accessor :merchant_tier

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'batch_group' => :'batchGroup',
        :'business_application_id' => :'businessApplicationId',
        :'merchant_verification_value' => :'merchantVerificationValue',
        :'aba_number' => :'abaNumber',
        :'acquirer' => :'acquirer',
        :'merchant_id' => :'merchantId',
        :'terminal_id' => :'terminalId',
        :'payment_types' => :'paymentTypes',
        :'currencies' => :'currencies',
        :'sic_code' => :'sicCode',
        :'allow_multiple_bills' => :'allowMultipleBills',
        :'allow_merchant_descriptor_override' => :'allowMerchantDescriptorOverride',
        :'enhanced_data' => :'enhancedData',
        :'fire_safety_indicator' => :'fireSafetyIndicator',
        :'quasi_cash' => :'quasiCash',
        :'acquirer_merchant_id' => :'acquirerMerchantId',
        :'avs_format' => :'avsFormat',
        :'enable_long_trans_ref_no' => :'enableLongTransRefNo',
        :'enable_level2' => :'enableLevel2',
        :'enable_multiple_transaction_advice_addendum' => :'enableMultipleTransactionAdviceAddendum',
        :'amex_transaction_advice_addendum1' => :'amexTransactionAdviceAddendum1',
        :'enable_multi_line_items' => :'enableMultiLineItems',
        :'enable_transaction_reference_number' => :'enableTransactionReferenceNumber',
        :'enable_auto_auth_reversal_after_void' => :'enableAutoAuthReversalAfterVoid',
        :'enable_expresspay_pan_translation' => :'enableExpresspayPanTranslation',
        :'enable_credit_auth' => :'enableCreditAuth',
        :'industry_code' => :'industryCode',
        :'send_amex_level2_data' => :'sendAmexLevel2Data',
        :'soft_descriptor_type' => :'softDescriptorType',
        :'vital_number' => :'vitalNumber',
        :'bank_number' => :'bankNumber',
        :'chain_number' => :'chainNumber',
        :'merchant_bin_number' => :'merchantBinNumber',
        :'merchant_location_number' => :'merchantLocationNumber',
        :'store_id' => :'storeID',
        :'travel_agency_code' => :'travelAgencyCode',
        :'travel_agency_name' => :'travelAgencyName',
        :'settlement_currency' => :'settlementCurrency',
        :'enable_least_cost_routing' => :'enableLeastCostRouting',
        :'enable_cvv_response_indicator' => :'enableCVVResponseIndicator',
        :'enable_multi_currency_processing' => :'enableMultiCurrencyProcessing',
        :'enable_pos_network_switching' => :'enablePosNetworkSwitching',
        :'enable_dynamic_currency_conversion' => :'enableDynamicCurrencyConversion',
        :'merchant_tier' => :'merchantTier'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'batch_group' => :'batch_group',
        :'business_application_id' => :'business_application_id',
        :'merchant_verification_value' => :'merchant_verification_value',
        :'aba_number' => :'aba_number',
        :'acquirer' => :'acquirer',
        :'merchant_id' => :'merchant_id',
        :'terminal_id' => :'terminal_id',
        :'payment_types' => :'payment_types',
        :'currencies' => :'currencies',
        :'sic_code' => :'sic_code',
        :'allow_multiple_bills' => :'allow_multiple_bills',
        :'allow_merchant_descriptor_override' => :'allow_merchant_descriptor_override',
        :'enhanced_data' => :'enhanced_data',
        :'fire_safety_indicator' => :'fire_safety_indicator',
        :'quasi_cash' => :'quasi_cash',
        :'acquirer_merchant_id' => :'acquirer_merchant_id',
        :'avs_format' => :'avs_format',
        :'enable_long_trans_ref_no' => :'enable_long_trans_ref_no',
        :'enable_level2' => :'enable_level2',
        :'enable_multiple_transaction_advice_addendum' => :'enable_multiple_transaction_advice_addendum',
        :'amex_transaction_advice_addendum1' => :'amex_transaction_advice_addendum1',
        :'enable_multi_line_items' => :'enable_multi_line_items',
        :'enable_transaction_reference_number' => :'enable_transaction_reference_number',
        :'enable_auto_auth_reversal_after_void' => :'enable_auto_auth_reversal_after_void',
        :'enable_expresspay_pan_translation' => :'enable_expresspay_pan_translation',
        :'enable_credit_auth' => :'enable_credit_auth',
        :'industry_code' => :'industry_code',
        :'send_amex_level2_data' => :'send_amex_level2_data',
        :'soft_descriptor_type' => :'soft_descriptor_type',
        :'vital_number' => :'vital_number',
        :'bank_number' => :'bank_number',
        :'chain_number' => :'chain_number',
        :'merchant_bin_number' => :'merchant_bin_number',
        :'merchant_location_number' => :'merchant_location_number',
        :'store_id' => :'store_id',
        :'travel_agency_code' => :'travel_agency_code',
        :'travel_agency_name' => :'travel_agency_name',
        :'settlement_currency' => :'settlement_currency',
        :'enable_least_cost_routing' => :'enable_least_cost_routing',
        :'enable_cvv_response_indicator' => :'enable_cvv_response_indicator',
        :'enable_multi_currency_processing' => :'enable_multi_currency_processing',
        :'enable_pos_network_switching' => :'enable_pos_network_switching',
        :'enable_dynamic_currency_conversion' => :'enable_dynamic_currency_conversion',
        :'merchant_tier' => :'merchant_tier'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'batch_group' => :'String',
        :'business_application_id' => :'String',
        :'merchant_verification_value' => :'String',
        :'aba_number' => :'String',
        :'acquirer' => :'PaymentProductsCardProcessingConfigurationInformationConfigurationsCommonAcquirer',
        :'merchant_id' => :'String',
        :'terminal_id' => :'String',
        :'payment_types' => :'Hash<String, PaymentProductsCardProcessingConfigurationInformationConfigurationsCommonPaymentTypes>',
        :'currencies' => :'Hash<String, PaymentProductsCardProcessingConfigurationInformationConfigurationsCommonCurrencies1>',
        :'sic_code' => :'String',
        :'allow_multiple_bills' => :'BOOLEAN',
        :'allow_merchant_descriptor_override' => :'BOOLEAN',
        :'enhanced_data' => :'String',
        :'fire_safety_indicator' => :'BOOLEAN',
        :'quasi_cash' => :'BOOLEAN',
        :'acquirer_merchant_id' => :'String',
        :'avs_format' => :'String',
        :'enable_long_trans_ref_no' => :'BOOLEAN',
        :'enable_level2' => :'BOOLEAN',
        :'enable_multiple_transaction_advice_addendum' => :'BOOLEAN',
        :'amex_transaction_advice_addendum1' => :'String',
        :'enable_multi_line_items' => :'BOOLEAN',
        :'enable_transaction_reference_number' => :'BOOLEAN',
        :'enable_auto_auth_reversal_after_void' => :'BOOLEAN',
        :'enable_expresspay_pan_translation' => :'BOOLEAN',
        :'enable_credit_auth' => :'BOOLEAN',
        :'industry_code' => :'String',
        :'send_amex_level2_data' => :'BOOLEAN',
        :'soft_descriptor_type' => :'String',
        :'vital_number' => :'String',
        :'bank_number' => :'String',
        :'chain_number' => :'String',
        :'merchant_bin_number' => :'String',
        :'merchant_location_number' => :'String',
        :'store_id' => :'String',
        :'travel_agency_code' => :'String',
        :'travel_agency_name' => :'String',
        :'settlement_currency' => :'String',
        :'enable_least_cost_routing' => :'BOOLEAN',
        :'enable_cvv_response_indicator' => :'BOOLEAN',
        :'enable_multi_currency_processing' => :'String',
        :'enable_pos_network_switching' => :'BOOLEAN',
        :'enable_dynamic_currency_conversion' => :'BOOLEAN',
        :'merchant_tier' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'batchGroup')
        self.batch_group = attributes[:'batchGroup']
      end

      if attributes.has_key?(:'businessApplicationId')
        self.business_application_id = attributes[:'businessApplicationId']
      end

      if attributes.has_key?(:'merchantVerificationValue')
        self.merchant_verification_value = attributes[:'merchantVerificationValue']
      end

      if attributes.has_key?(:'abaNumber')
        self.aba_number = attributes[:'abaNumber']
      end

      if attributes.has_key?(:'acquirer')
        self.acquirer = attributes[:'acquirer']
      end

      if attributes.has_key?(:'merchantId')
        self.merchant_id = attributes[:'merchantId']
      end

      if attributes.has_key?(:'terminalId')
        self.terminal_id = attributes[:'terminalId']
      end

      if attributes.has_key?(:'paymentTypes')
        if (value = attributes[:'paymentTypes']).is_a?(Hash)
          self.payment_types = value
        end
      end

      if attributes.has_key?(:'currencies')
        if (value = attributes[:'currencies']).is_a?(Hash)
          self.currencies = value
        end
      end

      if attributes.has_key?(:'sicCode')
        self.sic_code = attributes[:'sicCode']
      end

      if attributes.has_key?(:'allowMultipleBills')
        self.allow_multiple_bills = attributes[:'allowMultipleBills']
      end

      if attributes.has_key?(:'allowMerchantDescriptorOverride')
        self.allow_merchant_descriptor_override = attributes[:'allowMerchantDescriptorOverride']
      end

      if attributes.has_key?(:'enhancedData')
        self.enhanced_data = attributes[:'enhancedData']
      end

      if attributes.has_key?(:'fireSafetyIndicator')
        self.fire_safety_indicator = attributes[:'fireSafetyIndicator']
      end

      if attributes.has_key?(:'quasiCash')
        self.quasi_cash = attributes[:'quasiCash']
      end

      if attributes.has_key?(:'acquirerMerchantId')
        self.acquirer_merchant_id = attributes[:'acquirerMerchantId']
      end

      if attributes.has_key?(:'avsFormat')
        self.avs_format = attributes[:'avsFormat']
      end

      if attributes.has_key?(:'enableLongTransRefNo')
        self.enable_long_trans_ref_no = attributes[:'enableLongTransRefNo']
      end

      if attributes.has_key?(:'enableLevel2')
        self.enable_level2 = attributes[:'enableLevel2']
      end

      if attributes.has_key?(:'enableMultipleTransactionAdviceAddendum')
        self.enable_multiple_transaction_advice_addendum = attributes[:'enableMultipleTransactionAdviceAddendum']
      end

      if attributes.has_key?(:'amexTransactionAdviceAddendum1')
        self.amex_transaction_advice_addendum1 = attributes[:'amexTransactionAdviceAddendum1']
      end

      if attributes.has_key?(:'enableMultiLineItems')
        self.enable_multi_line_items = attributes[:'enableMultiLineItems']
      end

      if attributes.has_key?(:'enableTransactionReferenceNumber')
        self.enable_transaction_reference_number = attributes[:'enableTransactionReferenceNumber']
      end

      if attributes.has_key?(:'enableAutoAuthReversalAfterVoid')
        self.enable_auto_auth_reversal_after_void = attributes[:'enableAutoAuthReversalAfterVoid']
      end

      if attributes.has_key?(:'enableExpresspayPanTranslation')
        self.enable_expresspay_pan_translation = attributes[:'enableExpresspayPanTranslation']
      end

      if attributes.has_key?(:'enableCreditAuth')
        self.enable_credit_auth = attributes[:'enableCreditAuth']
      end

      if attributes.has_key?(:'industryCode')
        self.industry_code = attributes[:'industryCode']
      end

      if attributes.has_key?(:'sendAmexLevel2Data')
        self.send_amex_level2_data = attributes[:'sendAmexLevel2Data']
      end

      if attributes.has_key?(:'softDescriptorType')
        self.soft_descriptor_type = attributes[:'softDescriptorType']
      end

      if attributes.has_key?(:'vitalNumber')
        self.vital_number = attributes[:'vitalNumber']
      end

      if attributes.has_key?(:'bankNumber')
        self.bank_number = attributes[:'bankNumber']
      end

      if attributes.has_key?(:'chainNumber')
        self.chain_number = attributes[:'chainNumber']
      end

      if attributes.has_key?(:'merchantBinNumber')
        self.merchant_bin_number = attributes[:'merchantBinNumber']
      end

      if attributes.has_key?(:'merchantLocationNumber')
        self.merchant_location_number = attributes[:'merchantLocationNumber']
      end

      if attributes.has_key?(:'storeID')
        self.store_id = attributes[:'storeID']
      end

      if attributes.has_key?(:'travelAgencyCode')
        self.travel_agency_code = attributes[:'travelAgencyCode']
      end

      if attributes.has_key?(:'travelAgencyName')
        self.travel_agency_name = attributes[:'travelAgencyName']
      end

      if attributes.has_key?(:'settlementCurrency')
        self.settlement_currency = attributes[:'settlementCurrency']
      end

      if attributes.has_key?(:'enableLeastCostRouting')
        self.enable_least_cost_routing = attributes[:'enableLeastCostRouting']
      end

      if attributes.has_key?(:'enableCVVResponseIndicator')
        self.enable_cvv_response_indicator = attributes[:'enableCVVResponseIndicator']
      end

      if attributes.has_key?(:'enableMultiCurrencyProcessing')
        self.enable_multi_currency_processing = attributes[:'enableMultiCurrencyProcessing']
      end

      if attributes.has_key?(:'enablePosNetworkSwitching')
        self.enable_pos_network_switching = attributes[:'enablePosNetworkSwitching']
      end

      if attributes.has_key?(:'enableDynamicCurrencyConversion')
        self.enable_dynamic_currency_conversion = attributes[:'enableDynamicCurrencyConversion']
      end

      if attributes.has_key?(:'merchantTier')
        self.merchant_tier = attributes[:'merchantTier']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @merchant_id.nil?
        invalid_properties.push('invalid value for "merchant_id", merchant_id cannot be nil.')
      end

      #if !@merchant_tier.nil? && @merchant_tier !~ Regexp.new(/^[0-9]+$/)
        #invalid_properties.push('invalid value for "merchant_tier", must conform to the pattern /^[0-9]+$/.')
      #end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @merchant_id.nil?
      industry_code_validator = EnumAttributeValidator.new('String', ['0', 'A', 'B', 'D', 'F', 'G', 'H', 'L', 'O', 'P', 'R'])
      return false unless industry_code_validator.valid?(@industry_code)
      #return false if !@merchant_tier.nil? && @merchant_tier !~ Regexp.new(/^[0-9]+$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] industry_code Object to be assigned
    def industry_code=(industry_code)
      validator = EnumAttributeValidator.new('String', ['0', 'A', 'B', 'D', 'F', 'G', 'H', 'L', 'O', 'P', 'R'])
      unless validator.valid?(industry_code)
        fail ArgumentError, 'invalid value for "industry_code", must be one of #{validator.allowable_values}.'
      end
      @industry_code = industry_code
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_tier Value to be assigned
    def merchant_tier=(merchant_tier)
      #if !merchant_tier.nil? && merchant_tier !~ Regexp.new(/^[0-9]+$/)
        #fail ArgumentError, 'invalid value for "merchant_tier", must conform to the pattern /^[0-9]+$/.'
      #end

      @merchant_tier = merchant_tier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          batch_group == o.batch_group &&
          business_application_id == o.business_application_id &&
          merchant_verification_value == o.merchant_verification_value &&
          aba_number == o.aba_number &&
          acquirer == o.acquirer &&
          merchant_id == o.merchant_id &&
          terminal_id == o.terminal_id &&
          payment_types == o.payment_types &&
          currencies == o.currencies &&
          sic_code == o.sic_code &&
          allow_multiple_bills == o.allow_multiple_bills &&
          allow_merchant_descriptor_override == o.allow_merchant_descriptor_override &&
          enhanced_data == o.enhanced_data &&
          fire_safety_indicator == o.fire_safety_indicator &&
          quasi_cash == o.quasi_cash &&
          acquirer_merchant_id == o.acquirer_merchant_id &&
          avs_format == o.avs_format &&
          enable_long_trans_ref_no == o.enable_long_trans_ref_no &&
          enable_level2 == o.enable_level2 &&
          enable_multiple_transaction_advice_addendum == o.enable_multiple_transaction_advice_addendum &&
          amex_transaction_advice_addendum1 == o.amex_transaction_advice_addendum1 &&
          enable_multi_line_items == o.enable_multi_line_items &&
          enable_transaction_reference_number == o.enable_transaction_reference_number &&
          enable_auto_auth_reversal_after_void == o.enable_auto_auth_reversal_after_void &&
          enable_expresspay_pan_translation == o.enable_expresspay_pan_translation &&
          enable_credit_auth == o.enable_credit_auth &&
          industry_code == o.industry_code &&
          send_amex_level2_data == o.send_amex_level2_data &&
          soft_descriptor_type == o.soft_descriptor_type &&
          vital_number == o.vital_number &&
          bank_number == o.bank_number &&
          chain_number == o.chain_number &&
          merchant_bin_number == o.merchant_bin_number &&
          merchant_location_number == o.merchant_location_number &&
          store_id == o.store_id &&
          travel_agency_code == o.travel_agency_code &&
          travel_agency_name == o.travel_agency_name &&
          settlement_currency == o.settlement_currency &&
          enable_least_cost_routing == o.enable_least_cost_routing &&
          enable_cvv_response_indicator == o.enable_cvv_response_indicator &&
          enable_multi_currency_processing == o.enable_multi_currency_processing &&
          enable_pos_network_switching == o.enable_pos_network_switching &&
          enable_dynamic_currency_conversion == o.enable_dynamic_currency_conversion &&
          merchant_tier == o.merchant_tier
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [batch_group, business_application_id, merchant_verification_value, aba_number, acquirer, merchant_id, terminal_id, payment_types, currencies, sic_code, allow_multiple_bills, allow_merchant_descriptor_override, enhanced_data, fire_safety_indicator, quasi_cash, acquirer_merchant_id, avs_format, enable_long_trans_ref_no, enable_level2, enable_multiple_transaction_advice_addendum, amex_transaction_advice_addendum1, enable_multi_line_items, enable_transaction_reference_number, enable_auto_auth_reversal_after_void, enable_expresspay_pan_translation, enable_credit_auth, industry_code, send_amex_level2_data, soft_descriptor_type, vital_number, bank_number, chain_number, merchant_bin_number, merchant_location_number, store_id, travel_agency_code, travel_agency_name, settlement_currency, enable_least_cost_routing, enable_cvv_response_indicator, enable_multi_currency_processing, enable_pos_network_switching, enable_dynamic_currency_conversion, merchant_tier].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{self.class.json_map[key]}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{self.class.json_map[key]}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end