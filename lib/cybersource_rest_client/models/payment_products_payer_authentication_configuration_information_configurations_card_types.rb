=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypes
    attr_accessor :verified_by_visa

    attr_accessor :master_card_secure_code

    attr_accessor :amex_safe_key

    attr_accessor :j_cbj_secure

    attr_accessor :diners_club_international_protect_buy

    attr_accessor :elo

    attr_accessor :upi

    attr_accessor :cb

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'verified_by_visa' => :'verifiedByVisa',
        :'master_card_secure_code' => :'masterCardSecureCode',
        :'amex_safe_key' => :'amexSafeKey',
        :'j_cbj_secure' => :'jCBJSecure',
        :'diners_club_international_protect_buy' => :'dinersClubInternationalProtectBuy',
        :'elo' => :'ELO',
        :'upi' => :'UPI',
        :'cb' => :'CB'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'verified_by_visa' => :'verified_by_visa',
        :'master_card_secure_code' => :'master_card_secure_code',
        :'amex_safe_key' => :'amex_safe_key',
        :'j_cbj_secure' => :'j_cbj_secure',
        :'diners_club_international_protect_buy' => :'diners_club_international_protect_buy',
        :'elo' => :'elo',
        :'upi' => :'upi',
        :'cb' => :'cb'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'verified_by_visa' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'master_card_secure_code' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'amex_safe_key' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'j_cbj_secure' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesJCBJSecure',
        :'diners_club_international_protect_buy' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'elo' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'upi' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesVerifiedByVisa',
        :'cb' => :'PaymentProductsPayerAuthenticationConfigurationInformationConfigurationsCardTypesCB'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'verifiedByVisa')
        self.verified_by_visa = attributes[:'verifiedByVisa']
      end

      if attributes.has_key?(:'masterCardSecureCode')
        self.master_card_secure_code = attributes[:'masterCardSecureCode']
      end

      if attributes.has_key?(:'amexSafeKey')
        self.amex_safe_key = attributes[:'amexSafeKey']
      end

      if attributes.has_key?(:'jCBJSecure')
        self.j_cbj_secure = attributes[:'jCBJSecure']
      end

      if attributes.has_key?(:'dinersClubInternationalProtectBuy')
        self.diners_club_international_protect_buy = attributes[:'dinersClubInternationalProtectBuy']
      end

      if attributes.has_key?(:'ELO')
        self.elo = attributes[:'ELO']
      end

      if attributes.has_key?(:'UPI')
        self.upi = attributes[:'UPI']
      end

      if attributes.has_key?(:'CB')
        self.cb = attributes[:'CB']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          verified_by_visa == o.verified_by_visa &&
          master_card_secure_code == o.master_card_secure_code &&
          amex_safe_key == o.amex_safe_key &&
          j_cbj_secure == o.j_cbj_secure &&
          diners_club_international_protect_buy == o.diners_club_international_protect_buy &&
          elo == o.elo &&
          upi == o.upi &&
          cb == o.cb
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [verified_by_visa, master_card_secure_code, amex_safe_key, j_cbj_secure, diners_club_international_protect_buy, elo, upi, cb].hash
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