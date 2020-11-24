=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationStandardAddress
    attr_accessor :address1

    # Second line of the standardized address.
    attr_accessor :address2

    # Third line of the standardized address.
    attr_accessor :address3

    # Fourth line of the standardized address.
    attr_accessor :address4

    # Standardized city name.
    attr_accessor :locality

    # U.S. county if available.
    attr_accessor :county

    # Standardized country name.
    attr_accessor :country

    # Standardized city, state or province, and ZIP +4 code or postal code line.
    attr_accessor :csz

    # Standardized two-character ISO country code.
    attr_accessor :iso_country

    # U.S.P.S. standardized state or province abbreviation.
    attr_accessor :administrative_area

    # Standardized U.S. ZIP + 4 postal code.
    attr_accessor :postal_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'address3' => :'address3',
        :'address4' => :'address4',
        :'locality' => :'locality',
        :'county' => :'county',
        :'country' => :'country',
        :'csz' => :'csz',
        :'iso_country' => :'isoCountry',
        :'administrative_area' => :'administrativeArea',
        :'postal_code' => :'postalCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address1' => :'RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationStandardAddressAddress1',
        :'address2' => :'String',
        :'address3' => :'String',
        :'address4' => :'String',
        :'locality' => :'String',
        :'county' => :'String',
        :'country' => :'String',
        :'csz' => :'String',
        :'iso_country' => :'String',
        :'administrative_area' => :'String',
        :'postal_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'address3')
        self.address3 = attributes[:'address3']
      end

      if attributes.has_key?(:'address4')
        self.address4 = attributes[:'address4']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'county')
        self.county = attributes[:'county']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'csz')
        self.csz = attributes[:'csz']
      end

      if attributes.has_key?(:'isoCountry')
        self.iso_country = attributes[:'isoCountry']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
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
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] address3 Value to be assigned
    def address3=(address3)
      @address3 = address3
    end

    # Custom attribute writer method with validation
    # @param [Object] address4 Value to be assigned
    def address4=(address4)
      @address4 = address4
    end

    # Custom attribute writer method with validation
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] county Value to be assigned
    def county=(county)
      @county = county
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] csz Value to be assigned
    def csz=(csz)
      @csz = csz
    end

    # Custom attribute writer method with validation
    # @param [Object] iso_country Value to be assigned
    def iso_country=(iso_country)
      @iso_country = iso_country
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      @postal_code = postal_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          address3 == o.address3 &&
          address4 == o.address4 &&
          locality == o.locality &&
          county == o.county &&
          country == o.country &&
          csz == o.csz &&
          iso_country == o.iso_country &&
          administrative_area == o.administrative_area &&
          postal_code == o.postal_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address1, address2, address3, address4, locality, county, country, csz, iso_country, administrative_area, postal_code].hash
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
