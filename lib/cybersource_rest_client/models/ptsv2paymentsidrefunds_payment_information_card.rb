=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidrefundsPaymentInformationCard
    # The customer’s payment card number, also known as the Primary Account Number (PAN). You can also use this field for encoded account numbers.  #### FDMS Nashville Required. String (19)  #### GPX Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### All other processors Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting. 
    attr_accessor :number

    # Two-digit month in which the payment card expires.  Format: `MM`.  Valid values: `01` through `12`. Leading 0 is required.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`01` through `12`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (_type_=039), if there is no expiration date on the card, use `12`.  #### FDMS Nashville Required field.  #### All other processors Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### Google Pay transactions For PAN-based Google Pay transactions, this field is returned in the API response. 
    attr_accessor :expiration_month

    # Four-digit year in which the payment card expires.  Format: `YYYY`.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`1900` through `3000`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (**_type_**`=039`), if there is no expiration date on the card, use `2021`.  #### FDMS Nashville Required field.  #### FDC Nashville Global and FDMS South You can send in 2 digits or 4 digits. If you send in 2 digits, they must be the last 2 digits of the year.  #### All other processors Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### Google Pay transactions For PAN-based Google Pay transactions, this field is returned in the API response. 
    attr_accessor :expiration_year

    # Three-digit value that indicates the card type.  **IMPORTANT** It is strongly recommended that you include the card type field in request messages even if it is optional for your processor and card type. Omitting the card type can cause the transaction to be processed with the wrong card type.  Possible values: - `001`: Visa. For card-present transactions on all processors except SIX, the Visa Electron card type is processed the same way that the Visa debit card is processed. Use card type value `001` for Visa Electron. - `002`: Mastercard, Eurocard[^1], which is a European regional brand of Mastercard. - `003`: American Express - `004`: Discover - `005`: Diners Club - `006`: Carte Blanche[^1] - `007`: JCB[^1] - `014`: Enroute[^1] - `021`: JAL[^1] - `024`: Maestro (UK Domestic)[^1] - `031`: Delta[^1]: Use this value only for Ingenico ePayments. For other processors, use `001` for all Visa card types. - `033`: Visa Electron[^1]. Use this value only for Ingenico ePayments and SIX. For other processors, use `001` for all Visa card types. - `034`: Dankort[^1] - `036`: Cartes Bancaires[^1,4] - `037`: Carta Si[^1] - `039`: Encoded account number[^1] - `040`: UATP[^1] - `042`: Maestro (International)[^1] - `050`: Hipercard[^2,3] - `051`: Aura - `054`: Elo[^3] - `062`: China UnionPay - '070': EFTPOS  [^1]: For this card type, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in your request for an authorization or a stand-alone credit. [^2]: For this card type on Cielo 3.0, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in a request for an authorization or a stand-alone credit. This card type is not supported on Cielo 1.5. [^3]: For this card type on Getnet and Rede, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in a request for an authorization or a stand-alone credit. [^4]: For this card type, you must include the `paymentInformation.card.type` in your request for any payer authentication services.  #### Used by **Authorization** Required for Carte Blanche and JCB. Optional for all other card types.  #### Card Present reply This field is included in the reply message when the client software that is installed on the POS terminal uses the token management service (TMS) to retrieve tokenized payment details. You must contact customer support to have your account enabled to receive these fields in the credit reply message.  Returned by the Credit service.  This reply field is only supported by the following processors: - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - OmniPay Direct - SIX  #### Google Pay transactions For PAN-based Google Pay transactions, this field is returned in the API response.  #### GPX This field only supports transactions from the following card types: - Visa - Mastercard - AMEX - Discover - Diners - JCB - Union Pay International 
    attr_accessor :type

    # Identifier for the issuing bank that provided the customer’s encoded account number. Contact your processor for the bank’s ID. 
    attr_accessor :account_encoder_id

    # Number of times a Maestro (UK Domestic) card has been issued to the account holder. The card might or might not have an issue number. The number can consist of one or two digits, and the first digit might be a zero. When you include this value in your request, include exactly what is printed on the card. A value of 2 is different than a value of 02. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card.  **Note** The issue number is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :issue_number

    # Month of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: MM`. Possible values: 01 through 12.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_month

    # Year of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: YYYY`.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_year

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  This field is required in the following cases:   - Debit transactions on Cielo and Comercio Latino.   - Transactions with Brazilian-issued cards on CyberSource through VisaNet.   - Applicable only for CyberSource through VisaNet (CtV).  **Note** Combo cards in Brazil contain credit and debit functionality in a single card. Visa systems use a credit bank identification number (BIN) for this type of card. Using the BIN to determine whether a card is debit or credit can cause transactions with these cards to be processed incorrectly. CyberSource strongly recommends that you include this field for combo card transactions.  Possible values include the following.   - `CHECKING`: Checking account  - `CREDIT`: Credit card account  - `SAVING`: Saving account  - `LINE_OF_CREDIT`: Line of credit or credit portion of combo card  - `PREPAID`: Prepaid card account or prepaid portion of combo card  - `UNIVERSAL`: Universal account 
    attr_accessor :source_account_type

    # Type of account that is being used when the value for the override_payment_method field is line of credit (LI) or prepaid card (PP). Possible values for line of credit: - `AGRC`: Visa Agro Custeio - `AGRE`: Visa Agro Electron - `AGRI`: Visa Agro Investimento - `AGRO`: Visa Agro Possible values for prepaid card: - `VVA`: Visa Vale Alimentacao - `VVF`: Visa Vale Flex - `VVR`: Visa Vale Refeicao This field is supported only for combo card transactions in Brazil on CyberSource through VisaNet. 
    attr_accessor :source_account_type_details

    # Card Verification Number.  #### FDMS Nashville Required for American Express or if swiped; otherwise, optional.  #### Ingenico ePayments Do not include this field when `commerceIndicator=recurring`. **Note** Ingenico ePayments was previously called _Global Collect_.  #### TSYS Acquiring Solutions Optional if pointOfSaleInformation.entryMode=keyed; otherwise, not used.  #### GPX Optional.  #### All other processors: Optional. 
    attr_accessor :security_code

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  Possible values:   - C: Credit transaction  - D: Debit transaction  This field is supported only for all card Types on Visa Platform Connect.  This field is required for:  - Debit transactions on Cielo and Comercio Latino.  - Transactions with Brazilian-issued cards on CyberSource through VisaNet.  **Note** The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR0 - Position: 51 - Field: Combination Card Transaction Identifier 
    attr_accessor :use_as

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'number' => :'number',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'type' => :'type',
        :'account_encoder_id' => :'accountEncoderId',
        :'issue_number' => :'issueNumber',
        :'start_month' => :'startMonth',
        :'start_year' => :'startYear',
        :'source_account_type' => :'sourceAccountType',
        :'source_account_type_details' => :'sourceAccountTypeDetails',
        :'security_code' => :'securityCode',
        :'use_as' => :'useAs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'number' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'type' => :'String',
        :'account_encoder_id' => :'String',
        :'issue_number' => :'String',
        :'start_month' => :'String',
        :'start_year' => :'String',
        :'source_account_type' => :'String',
        :'source_account_type_details' => :'String',
        :'security_code' => :'String',
        :'use_as' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'accountEncoderId')
        self.account_encoder_id = attributes[:'accountEncoderId']
      end

      if attributes.has_key?(:'issueNumber')
        self.issue_number = attributes[:'issueNumber']
      end

      if attributes.has_key?(:'startMonth')
        self.start_month = attributes[:'startMonth']
      end

      if attributes.has_key?(:'startYear')
        self.start_year = attributes[:'startYear']
      end

      if attributes.has_key?(:'sourceAccountType')
        self.source_account_type = attributes[:'sourceAccountType']
      end

      if attributes.has_key?(:'sourceAccountTypeDetails')
        self.source_account_type_details = attributes[:'sourceAccountTypeDetails']
      end

      if attributes.has_key?(:'securityCode')
        self.security_code = attributes[:'securityCode']
      end

      if attributes.has_key?(:'useAs')
        self.use_as = attributes[:'useAs']
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
    # @param [Object] number Value to be assigned
    def number=(number)
      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] account_encoder_id Value to be assigned
    def account_encoder_id=(account_encoder_id)
      @account_encoder_id = account_encoder_id
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_number Value to be assigned
    def issue_number=(issue_number)
      @issue_number = issue_number
    end

    # Custom attribute writer method with validation
    # @param [Object] start_month Value to be assigned
    def start_month=(start_month)
      @start_month = start_month
    end

    # Custom attribute writer method with validation
    # @param [Object] start_year Value to be assigned
    def start_year=(start_year)
      @start_year = start_year
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_type Value to be assigned
    def source_account_type=(source_account_type)
      @source_account_type = source_account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_type_details Value to be assigned
    def source_account_type_details=(source_account_type_details)
      @source_account_type_details = source_account_type_details
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      @security_code = security_code
    end

    # Custom attribute writer method with validation
    # @param [Object] use_as Value to be assigned
    def use_as=(use_as)
      @use_as = use_as
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number == o.number &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          type == o.type &&
          account_encoder_id == o.account_encoder_id &&
          issue_number == o.issue_number &&
          start_month == o.start_month &&
          start_year == o.start_year &&
          source_account_type == o.source_account_type &&
          source_account_type_details == o.source_account_type_details &&
          security_code == o.security_code &&
          use_as == o.use_as
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [number, expiration_month, expiration_year, type, account_encoder_id, issue_number, start_month, start_year, source_account_type, source_account_type_details, security_code, use_as].hash
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
