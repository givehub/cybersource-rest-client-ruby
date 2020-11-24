=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsProcessingInformationAuthorizationOptions
    # Authorization type. Possible values:   - `AUTOCAPTURE`: automatic capture.  - `STANDARDCAPTURE`: standard capture.  - `VERBAL`: forced capture. Include it in the payment request for a forced capture. Include it in the capture request for a verbal payment.  #### Asia, Middle East, and Africa Gateway; Cielo; Comercio Latino; and CyberSource Latin American Processing Set this field to `AUTOCAPTURE` and include it in a bundled request to indicate that you are requesting an automatic capture. If your account is configured to enable automatic captures, set this field to `STANDARDCAPTURE` and include it in a standard authorization or bundled request to indicate that you are overriding an automatic capture. For more information, see the `auth_type` field description in [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Forced Capture Set this field to `VERBAL` and include it in the authorization request to indicate that you are performing a forced capture; therefore, you receive the authorization code outside the CyberSource system.  #### Verbal Authorization Set this field to `VERBAL` and include it in the capture request to indicate that the request is for a verbal authorization. For more information, see \"Verbal Authorizations\" in [Credit Card Services Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html). 
    attr_accessor :auth_type

    # Authorization code.  #### Forced Capture Use this field to send the authorization code you received from a payment that you authorized outside the CyberSource system.  #### PIN debit Authorization code that is returned by the processor.  Returned by PIN debit purchase.  #### Verbal Authorization Use this field in CAPTURE API to send the verbally received authorization code.  For processor-specific information, see the `auth_code` field description in [Credit Card Services Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html). 
    attr_accessor :verbal_auth_code

    # Transaction ID (TID).  #### FDMS South This field is required for verbal authorizations and forced captures with the American Express card type to comply with the CAPN requirements: - Forced capture: Obtain the value for this field from the authorization response. - Verbal authorization: You cannot obtain a value for this field so CyberSource uses the default value of `000000000000000` (15 zeros). 
    attr_accessor :verbal_auth_transaction_id

    # Flag that specifies the purpose of the authorization.  Possible values:  - **0**: Preauthorization  - **1**: Final authorization  To set the default for this field, contact CyberSource Customer Support.  #### Barclays and Elavon The default for Barclays and Elavon is 1 (final authorization). To change the default for this field, contact CyberSource Customer Support.  #### CyberSource through VisaNet When the value for this field is 0, it corresponds to the following data in the TC 33 capture file:  - Record: CP01 TCR0  - Position: 164  - Field: Additional Authorization Indicators When the value for this field is 1, it does not correspond to any data in the TC 33 capture file. 
    attr_accessor :auth_indicator

    # Flag that indicates whether the transaction is enabled for partial authorization. When the request includes this field, this value overrides the information in your account. Possible values: - `true`: Enable the transaction for partial authorization. - `false`: Do not enable the transaction for partial authorization.  #### PIN debit Required field for partial authorizations that use PIN debit purchase; otherwise, not used.  #### Used by **Authorization** Optional field.  #### CyberSource through VisaNet To set the default for this field, contact CyberSource Customer Support. The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR0 - Position: 164 - Field: Additional Authorization Indicators 
    attr_accessor :partial_auth_indicator

    # Flag that indicates whether to return balance information.  Possible values: - `true`: Return balance information. - `false`: Do not return balance information.  #### Used by **Authorization** Required for a balance inquiry; otherwise, not used.  #### PIN debit Required for a balance inquiry request of a PIN debit purchase; otherwise, not used. 
    attr_accessor :balance_inquiry

    # Flag for a sale request that indicates whether to allow the capture service to run even when the authorization receives an AVS decline, as indicated by a reply flag value of DAVSNO.  Possible values: - `true`: Ignore the results of AVS checking and run the capture service. - `false` (default): If the authorization receives an AVS decline, do not run the capture service. When the value of this field is `true`, the list in the `processingInformation.authorizationOptions.declineAvsFlags` field is ignored.  #### Used by **Authorization** Optional field. String (3) 
    attr_accessor :ignore_avs_result

    # Comma-separated list of AVS flags that cause the reply flag `DAVSNO` to be returned.  **Important** To receive declines for the AVS code `N`, you must include the value `N` in the comma-separated list.    ### AVS Codes for Cielo 3.0 and CyberSource Latin American Processing    **Note** CyberSource Latin American Processing is the name of a specific processing connection that CyberSource supports.   In the CyberSource API documentation, CyberSource Latin American Processing does not refer to the general topic of processing in Latin America.   The information in this section is for the specific processing connection called CyberSource Latin American Processing.   It is not for any other Latin American processors that CyberSource supports.  |AVS Code|Description| |--- |--- | |D|Partial match: postal code and address match.| |E|Not supported: AVS is not supported for this card type. _or_ Invalid: the acquirer returned an unrecognized value for the AVS response.| |F|Partial match: postal code matches, but CPF and address do not match.*| |G|Not supported: AVS not supported or not verified.| |I|No match: AVS information is not available.| |K|Partial match: CPF matches, but postal code and address do not match.*| |L|Partial match: postal code and CPF match, but address does not match.*| |N|No match: postal code, CPF, and address do not match.*| |O|Partial match: CPF and address match, but postal code does not match.*| |R|Not supported: your implementation does not support AVS _or_ System unavailable.| |T|Partial match: address matches, but postal code and CPF do not match.*| |V|Match: postal code, CPF, and address match.*| |* CPF (Cadastro de Pessoas Fisicas) is required only for Redecard in Brazil.||  ### AVS Codes for All Other Processors  **Note** The list of AVS codes for all other processors follows these descriptions of the processor-specific information for these codes.  #### American Express Cards For American Express cards only, you can receive Visa and CyberSource AVS codes in addition to the American Express AVS codes.  **Note** For CyberSource through VisaNet, the American Express AVS codes are converted to Visa AVS codes before they are returned to you. As a result, you will not receive American Express AVS codes for the American Express card type.<br/><br/>  _American Express Card codes_: `F`, `H`, `K`, `L`, `O`, `T`, `V`  #### Domestic and International Visa Cards The international and domestic alphabetic AVS codes are the Visa standard AVS codes. CyberSource maps the standard AVS return codes for other types of payment cards, including American Express cards, to the Visa standard AVS codes.  AVS is considered either domestic or international, depending on the location of the bank that issued the customer's payment card: - When the bank is in the U.S., the AVS is domestic. - When the bank is outside the U.S., the AVS is international.  You should be prepared to handle both domestic and international AVS result codes: - For international cards, you can receive domestic AVS codes in addition to the international AVS codes. - For domestic cards, you can receive international AVS codes in addition to the domestic AVS codes.  _International Visa Codes_: `B`, `C`, `D`, `G`, `I`, `M`, `P`  _Domestic Visa Codes_: `A`, `E`,`N`, `R`, `S`, `U`, `W`, `X`, `Y`, `Z`  #### CyberSource Codes The numeric AVS codes are created by CyberSource and are not standard Visa codes. These AVS codes can be returned for any card type.  _CyberSource Codes_: `1`, `2`, `3`, `4`  ### Table of AVS Codes for All Other Processors  |AVS Code|Description| |--- |--- | |A|Partial match: street address matches, but 5-digit and 9-digit postal codes do not match.| |B|Partial match: street address matches, but postal code is not verified. Returned only for Visa cards not issued in the U.S.| |C|No match: street address and postal code do not match. Returned only for Visa cards not issued in the U.S.| |D & M|Match: street address and postal code match. Returned only for Visa cards not issued in the U.S.| |E|Invalid: AVS data is invalid or AVS is not allowed for this card type.| |F|Partial match: card member’s name does not match, but billing postal code matches.| |G|Not supported: issuing bank outside the U.S. does not support AVS.| |H|Partial match: card member’s name does not match, but street address and postal code match. Returned only for the American Express card type.| |I|No match: address not verified. Returned only for Visa cards not issued in the U.S.| |K|Partial match: card member’s name matches, but billing address and billing postal code do not match. Returned only for the American Express card type.| |L|Partial match: card member’s name and billing postal code match, but billing address does not match. Returned only for the American Express card type.| |M|See the entry for D & M.| |N|No match: one of the following: street address and postal code do not match _or_ (American Express card type only) card member’s name, street address, and postal code do not match.| |O|Partial match: card member’s name and billing address match, but billing postal code does not match. Returned only for the American Express card type.| |P|Partial match: postal code matches, but street address not verified. Returned only for Visa cards not issued in the U.S.| |R|System unavailable.| |S|Not supported: issuing bank in the U.S. does not support AVS.| |T|Partial match: card member’s name does not match, but street address matches. Returned only for the American Express card type.| |U|System unavailable: address information unavailable for one of these reasons: The U.S. bank does not support AVS outside the U.S. _or_ The AVS in a U.S. bank is not functioning properly.| |V|Match: card member’s name, billing address, and billing postal code match. Returned only for the American Express card type.| |W|Partial match: street address does not match, but 9-digit postal code matches.| |X|Match: street address and 9-digit postal code match.| |Y|Match: street address and 5-digit postal code match.| |Z|Partial match: street address does not match, but 5-digit postal code matches.| |1|Not supported: one of the following: AVS is not supported for this processor or card type _or_ AVS is disabled for your CyberSource account. To enable AVS, contact CyberSource Customer Support.| |2|Unrecognized: the processor returned an unrecognized value for the AVS response.| |3|Match: address is confirmed. Returned only for PayPal Express Checkout.| |4|No match: address is not confirmed. Returned only for PayPal Express Checkout.| |5|No match: no AVS code was returned by the processor.| 
    attr_accessor :decline_avs_flags

    # Flag for a sale request that indicates whether to allow the capture service to run even when the authorization receives a CVN decline, as indicated by an `processorInformation.cardVerification.resultCode` value of `D` or `N`. Possible values: - `true`: Ignore the results of CVN checking and run the capture service. - `false` (default): If the authorization receives a CVN decline, do not run the capture service.  #### Used by **Authorization** Optional field. 
    attr_accessor :ignore_cv_result

    attr_accessor :initiator

    # Indicates payment for bill or payment towards existing contractual loan.  Possible values: - `true`: Bill payment or loan payment. - `false` (default): Not a bill payment or loan payment.  Optional request field. 
    attr_accessor :bill_payment

    # Reason for the payment.  Possible values: - 001: Utility payment - 002: Government services - 003: Mobile phone top-up - 004: Coupon payment  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR0 - Position: 48-50 - Field: Bill Payment Transaction Type Identifier  This field is supported only for bill payments in Brazil with Mastercard on CyberSource through VisaNet. 
    attr_accessor :bill_payment_type

    # Flag that indicates the payment request is a redemption inquiry.  Possible values:   - `true`   - `false` 
    attr_accessor :redemption_inquiry

    # Type of transportation mode :  Possible Values: - 00 = Unknown - 01 = Urban bus - 02 = Interurban bus - 03=Lighttrainmasstransit(Underground Metro LTR) - 04 = Train - 05 = Commuter train - 06 = Water-borne vehicle - 07 = Toll - 08 = Parking - 09 = Taxi - 10 = High-speed train - 11 = Rural bus - 12 = Express commuter train - 13 = Para transit - 14 = Self drive vehicle - 15 = Coach - 16 = Locomotive - 17 = Powered motor coach - 18 = Trailer - 19 = Regional train - 20 = Inter-city - 21 = Funicular train - 22 = Cable car 
    attr_accessor :transit_transaction_type

    # Indicates if transaction is an aggregated auth  Possible values: - **true** - **false** 
    attr_accessor :aggregated_auth_indicator

    # Indicates if transaction is a debt recovery request  Possible values: - **true** - **false** 
    attr_accessor :debt_recovery_indicator

    # Flag that indicates whether the authorization request was delayed because connectivity was interrupted.  Possible values:   - `true` (Deferred authorization)   - `false` (default: Not a deferred authorization) 
    attr_accessor :deferred_auth_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_type' => :'authType',
        :'verbal_auth_code' => :'verbalAuthCode',
        :'verbal_auth_transaction_id' => :'verbalAuthTransactionId',
        :'auth_indicator' => :'authIndicator',
        :'partial_auth_indicator' => :'partialAuthIndicator',
        :'balance_inquiry' => :'balanceInquiry',
        :'ignore_avs_result' => :'ignoreAvsResult',
        :'decline_avs_flags' => :'declineAvsFlags',
        :'ignore_cv_result' => :'ignoreCvResult',
        :'initiator' => :'initiator',
        :'bill_payment' => :'billPayment',
        :'bill_payment_type' => :'billPaymentType',
        :'redemption_inquiry' => :'redemptionInquiry',
        :'transit_transaction_type' => :'transitTransactionType',
        :'aggregated_auth_indicator' => :'aggregatedAuthIndicator',
        :'debt_recovery_indicator' => :'debtRecoveryIndicator',
        :'deferred_auth_indicator' => :'deferredAuthIndicator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auth_type' => :'String',
        :'verbal_auth_code' => :'String',
        :'verbal_auth_transaction_id' => :'String',
        :'auth_indicator' => :'String',
        :'partial_auth_indicator' => :'BOOLEAN',
        :'balance_inquiry' => :'BOOLEAN',
        :'ignore_avs_result' => :'BOOLEAN',
        :'decline_avs_flags' => :'Array<String>',
        :'ignore_cv_result' => :'BOOLEAN',
        :'initiator' => :'Ptsv2paymentsProcessingInformationAuthorizationOptionsInitiator',
        :'bill_payment' => :'BOOLEAN',
        :'bill_payment_type' => :'String',
        :'redemption_inquiry' => :'BOOLEAN',
        :'transit_transaction_type' => :'String',
        :'aggregated_auth_indicator' => :'String',
        :'debt_recovery_indicator' => :'String',
        :'deferred_auth_indicator' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authType')
        self.auth_type = attributes[:'authType']
      end

      if attributes.has_key?(:'verbalAuthCode')
        self.verbal_auth_code = attributes[:'verbalAuthCode']
      end

      if attributes.has_key?(:'verbalAuthTransactionId')
        self.verbal_auth_transaction_id = attributes[:'verbalAuthTransactionId']
      end

      if attributes.has_key?(:'authIndicator')
        self.auth_indicator = attributes[:'authIndicator']
      end

      if attributes.has_key?(:'partialAuthIndicator')
        self.partial_auth_indicator = attributes[:'partialAuthIndicator']
      end

      if attributes.has_key?(:'balanceInquiry')
        self.balance_inquiry = attributes[:'balanceInquiry']
      end

      if attributes.has_key?(:'ignoreAvsResult')
        self.ignore_avs_result = attributes[:'ignoreAvsResult']
      else
        self.ignore_avs_result = false
      end

      if attributes.has_key?(:'declineAvsFlags')
        if (value = attributes[:'declineAvsFlags']).is_a?(Array)
          self.decline_avs_flags = value
        end
      end

      if attributes.has_key?(:'ignoreCvResult')
        self.ignore_cv_result = attributes[:'ignoreCvResult']
      else
        self.ignore_cv_result = false
      end

      if attributes.has_key?(:'initiator')
        self.initiator = attributes[:'initiator']
      end

      if attributes.has_key?(:'billPayment')
        self.bill_payment = attributes[:'billPayment']
      end

      if attributes.has_key?(:'billPaymentType')
        self.bill_payment_type = attributes[:'billPaymentType']
      end

      if attributes.has_key?(:'redemptionInquiry')
        self.redemption_inquiry = attributes[:'redemptionInquiry']
      end

      if attributes.has_key?(:'transitTransactionType')
        self.transit_transaction_type = attributes[:'transitTransactionType']
      end

      if attributes.has_key?(:'aggregatedAuthIndicator')
        self.aggregated_auth_indicator = attributes[:'aggregatedAuthIndicator']
      end

      if attributes.has_key?(:'debtRecoveryIndicator')
        self.debt_recovery_indicator = attributes[:'debtRecoveryIndicator']
      end

      if attributes.has_key?(:'deferredAuthIndicator')
        self.deferred_auth_indicator = attributes[:'deferredAuthIndicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] auth_type Value to be assigned
    def auth_type=(auth_type)
      @auth_type = auth_type
    end

    # Custom attribute writer method with validation
    # @param [Object] verbal_auth_code Value to be assigned
    def verbal_auth_code=(verbal_auth_code)
      @verbal_auth_code = verbal_auth_code
    end

    # Custom attribute writer method with validation
    # @param [Object] verbal_auth_transaction_id Value to be assigned
    def verbal_auth_transaction_id=(verbal_auth_transaction_id)
      @verbal_auth_transaction_id = verbal_auth_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] auth_indicator Value to be assigned
    def auth_indicator=(auth_indicator)
      @auth_indicator = auth_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_type == o.auth_type &&
          verbal_auth_code == o.verbal_auth_code &&
          verbal_auth_transaction_id == o.verbal_auth_transaction_id &&
          auth_indicator == o.auth_indicator &&
          partial_auth_indicator == o.partial_auth_indicator &&
          balance_inquiry == o.balance_inquiry &&
          ignore_avs_result == o.ignore_avs_result &&
          decline_avs_flags == o.decline_avs_flags &&
          ignore_cv_result == o.ignore_cv_result &&
          initiator == o.initiator &&
          bill_payment == o.bill_payment &&
          bill_payment_type == o.bill_payment_type &&
          redemption_inquiry == o.redemption_inquiry &&
          transit_transaction_type == o.transit_transaction_type &&
          aggregated_auth_indicator == o.aggregated_auth_indicator &&
          debt_recovery_indicator == o.debt_recovery_indicator &&
          deferred_auth_indicator == o.deferred_auth_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_type, verbal_auth_code, verbal_auth_transaction_id, auth_indicator, partial_auth_indicator, balance_inquiry, ignore_avs_result, decline_avs_flags, ignore_cv_result, initiator, bill_payment, bill_payment_type, redemption_inquiry, transit_transaction_type, aggregated_auth_indicator, debt_recovery_indicator, deferred_auth_indicator].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
