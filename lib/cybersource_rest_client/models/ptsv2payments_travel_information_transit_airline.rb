=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsTravelInformationTransitAirline
    # Reference number for the airline booking. Required if ticket numbers are not issued. 
    attr_accessor :booking_reference_number

    # Airline that generated the ticket. Format: English characters only. Optional request field. 
    attr_accessor :carrier_name

    attr_accessor :ticket_issuer

    # Ticket number. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field. 
    attr_accessor :ticket_number

    # Check digit for the ticket number. CyberSource recommends that you validate the check digit. With Discover and Diners Club, a valid ticket number has these characteristics: - The value is numeric. - The first three digits are a valid IATA2 license plate carrier code. - The last digit is a check digit or zero (0). - All remaining digits are nonzero. 
    attr_accessor :check_digit

    # Flag that indicates whether or not the ticket is restricted (nonrefundable). Possible values: - 0: No restriction (refundable) - 1: Restricted (nonrefundable) Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field. 
    attr_accessor :restricted_ticket_indicator

    # Type of charge. Possible values: - 01: Charge is for an airline ticket - 02: Charge is for an item that is not an airline ticket 
    attr_accessor :transaction_type

    # The field is not currently supported. 
    attr_accessor :extended_payment_code

    # Name of the passenger to whom the ticket was issued.  This will always be a single passenger's name. If there are more than one passengers, provide only the primary passenger's name. Do not include special characters such as commas, hyphens, or apostrophes. Only ASCII characters are supported. Format: English characters only. Optional request field. 
    attr_accessor :passenger_name

    # Reference number or code that identifies the cardholder. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field. 
    attr_accessor :customer_code

    # Airline document type code that specifies the purpose of the transaction. Format: English characters only. Optional request field.  | Code | Description | | --- | --- | | 01 | Passenger ticket | | 02 | Additional collection | | 03 | Excess baggage | | 04 | Miscellaneous charge order (MCO) or prepaid ticket authorization | | 05 | Special service ticket | | 06 | Supported refund | | 07 | Unsupported refund | | 08 | Lost ticket application | | 09 | Tour order voucher | | 10 | Ticket by mail | | 11 | Undercharge adjustment | | 12 | Group ticket | | 13 | Exchange adjustment | | 14 | SPD or air freight | | 15 | In-flight adjustment | | 16 | Agency passenger ticket | | 17 | Agency tour order or voucher | | 18 | Agency miscellaneous charge order (MCO) | | 19 | Agency exchange order | | 20 | Agency group ticket | | 21 | Debit adjustment for duplicate refund or use | | 22 | In-flight merchandise order | | 23 | Catalogue merchandise order | | 24 | In-flight phone charges | | 25 | Frequent flyer fee or purchase | | 26 | Kennel charge | | 27 | Animal transportation charge | | 28 | Firearms case | | 29 | Upgrade charge | | 30 | Credit for unused transportation | | 31 | Credit for class of service adjustment | | 32 | Credit for denied boarding | | 33 | Credit for miscellaneous refund | | 34 | Credit for lost ticket refund | | 35 | Credit for exchange refund | | 36 | Credit for overcharge adjustment | | 37 | Credit for multiple Unused tickets | | 38 | Exchange order | | 39 | Self-service ticket | | 41 | In-flight duty-free purchase | | 42 | Senior citizen discount booklets | | 43 | Club membership fee | | 44 | Coupon book | | 45 | In-flight charges | | 46 | Tour deposit | | 47 | Frequent flyer overnight delivery charge | | 48 | Frequent flyer fulfillment | | 49 | Small package delivery | | 50 | Vendor sale | | 51 | Miscellaneous taxes or fees | | 52 | Travel agency fee | | 60 | Vendor refund or credit | | 64 | Duty free sale | | 65 | Preferred seat upgrade | | 66 | Cabin upgrade | | 67 | Lounge or club access or day pass | | 68 | Agent assisted reservation or ticketing fee | | 69 | Ticket change or cancel fee | | 70 | Trip insurance | | 71 | Unaccompanied minor | | 72 | Standby fee | | 73 | Curbside baggage | | 74 | In-flight medical equipment | | 75 | Ticket or pass print fee | | 76 | Checked sporting or special equipment | | 77 | Dry ice fee | | 78 | Mail or postage fee | | 79 | Club membership fee or temporary trial | | 80 | Frequent flyer activation or reinstatement | | 81 | Gift certificate | | 82 | Onboard or in-flight prepaid voucher | | 83 | Optional services fee | | 84 | Advance purchase for excess baggage | | 85 | Advance purchase for preferred seat upgrade | | 86 | Advance purchase for cabin upgrade | | 87 | Advance purchase for optional services | | 88 | WiFi | | 89 | Packages | | 90 | In-flight entertainment or internet access | | 91 | Overweight bag fee | | 92 | Sleep sets | | 93 | Special purchase fee | 
    attr_accessor :document_type

    # The field is not currently supported. 
    attr_accessor :document_number

    # The field is not currently supported. 
    attr_accessor :document_number_of_parts

    # Invoice number for the airline transaction. 
    attr_accessor :invoice_number

    # Invoice date. The format is YYYYMMDD. If this value is included in the request, it is used in the creation of the invoice number. See \"Invoice Number,\" 
    attr_accessor :invoice_date

    # Description of the charge if the charge does not involve an airline ticket. For example: Excess baggage. 
    attr_accessor :additional_charges

    # Total fee for the ticket. This value cannot exceed `99999999999999999999` (twenty 9s). Format: English characters only. Optional request field. 
    attr_accessor :total_fee_amount

    # Number that identifies the clearing message when multiple clearing messages are allowed per authorized transaction. Each clearing message linked to one authorization request must include a unique clearing sequence number between 1 and the total number of clearing records. Format: English characters only. Optional request field. 
    attr_accessor :clearing_sequence

    # Total number of clearing messages associated with the authorization request. Format: English characters only. Optional request field. 
    attr_accessor :clearing_count

    # Total clearing amount for all transactions in the clearing count set. This value cannot exceed `99999999999999999999` (twenty 9s). Format: English characters only. If this field is not set and if the total amount from the original authorization is not NULL, the total clearing amount is set to the total amount from the original authorization. 
    attr_accessor :total_clearing_amount

    # Number of passengers for whom the ticket was issued. Format: English characters only. Optional request field. 
    attr_accessor :number_of_passengers

    # Code that specifies the computerized reservation system used to make the reservation and purchase the ticket. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field. 
    attr_accessor :reservation_system_code

    # Airline process identifier. This value is the airline's three-digit IATA1 code which is used to process extended payment airline tickets. 
    attr_accessor :process_identifier

    # Date on which the transaction occurred. Format: `YYYYMMDD` Format: English characters only. Optional request field. 
    attr_accessor :ticket_issue_date

    # Flag that indicates whether an electronic ticket was issued. Possible values: - `true` - `false` Optional request field. 
    attr_accessor :electronic_ticket_indicator

    # Original ticket number when the transaction is for a replacement ticket. 
    attr_accessor :original_ticket_number

    # Type of purchase. Possible values: - `EXC`: Exchange ticket - `MSC`: Miscellaneous (not a ticket purchase and not a transaction related to an exchange ticket) - `REF`: Refund - `TKT`: Ticket Format: English characters only. Optional request field. 
    attr_accessor :purchase_type

    # Reason for the credit. Possible values: - `A`: Cancellation of the ancillary passenger transport purchase. - `B`: Cancellation of the airline ticket and the passenger transport ancillary purchase. - `C`: Cancellation of the airline ticket. - `O`: Other. - `P`: Partial refund of the airline ticket. Format: English characters only.  Optional request field. 
    attr_accessor :credit_reason_indicator

    # Type of update. Possible values: - `C`: Change to the existing ticket. - `N`: New ticket. Format: English characters only Optional request field. 
    attr_accessor :ticket_change_indicator

    # Plan number based on the fare. This value is provided by the airline. Format: English characters only. Optional request field. 
    attr_accessor :plan_number

    # Date of arrival for the last leg of the trip. Format: `MMDDYYYY` English characters only. Optional request field. 
    attr_accessor :arrival_date

    # Text that describes the ticket limitations, such as _nonrefundable_. Format: English characters only. Optional request field. 
    attr_accessor :restricted_ticket_desciption

    # Amount of the exchanged ticket. Format: English characters only. 
    attr_accessor :exchange_ticket_amount

    # Fee for exchanging the ticket. Format: English characters only. Optional request field. 
    attr_accessor :exchange_ticket_fee_amount

    # The field is not currently supported. 
    attr_accessor :reservation_type

    # Boarding fee. 
    attr_accessor :boarding_fee_amount

    attr_accessor :legs

    attr_accessor :ancillary_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'booking_reference_number' => :'bookingReferenceNumber',
        :'carrier_name' => :'carrierName',
        :'ticket_issuer' => :'ticketIssuer',
        :'ticket_number' => :'ticketNumber',
        :'check_digit' => :'checkDigit',
        :'restricted_ticket_indicator' => :'restrictedTicketIndicator',
        :'transaction_type' => :'transactionType',
        :'extended_payment_code' => :'extendedPaymentCode',
        :'passenger_name' => :'passengerName',
        :'customer_code' => :'customerCode',
        :'document_type' => :'documentType',
        :'document_number' => :'documentNumber',
        :'document_number_of_parts' => :'documentNumberOfParts',
        :'invoice_number' => :'invoiceNumber',
        :'invoice_date' => :'invoiceDate',
        :'additional_charges' => :'additionalCharges',
        :'total_fee_amount' => :'totalFeeAmount',
        :'clearing_sequence' => :'clearingSequence',
        :'clearing_count' => :'clearingCount',
        :'total_clearing_amount' => :'totalClearingAmount',
        :'number_of_passengers' => :'numberOfPassengers',
        :'reservation_system_code' => :'reservationSystemCode',
        :'process_identifier' => :'processIdentifier',
        :'ticket_issue_date' => :'ticketIssueDate',
        :'electronic_ticket_indicator' => :'electronicTicketIndicator',
        :'original_ticket_number' => :'originalTicketNumber',
        :'purchase_type' => :'purchaseType',
        :'credit_reason_indicator' => :'creditReasonIndicator',
        :'ticket_change_indicator' => :'ticketChangeIndicator',
        :'plan_number' => :'planNumber',
        :'arrival_date' => :'arrivalDate',
        :'restricted_ticket_desciption' => :'restrictedTicketDesciption',
        :'exchange_ticket_amount' => :'exchangeTicketAmount',
        :'exchange_ticket_fee_amount' => :'exchangeTicketFeeAmount',
        :'reservation_type' => :'reservationType',
        :'boarding_fee_amount' => :'boardingFeeAmount',
        :'legs' => :'legs',
        :'ancillary_information' => :'ancillaryInformation'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'booking_reference_number' => :'booking_reference_number',
        :'carrier_name' => :'carrier_name',
        :'ticket_issuer' => :'ticket_issuer',
        :'ticket_number' => :'ticket_number',
        :'check_digit' => :'check_digit',
        :'restricted_ticket_indicator' => :'restricted_ticket_indicator',
        :'transaction_type' => :'transaction_type',
        :'extended_payment_code' => :'extended_payment_code',
        :'passenger_name' => :'passenger_name',
        :'customer_code' => :'customer_code',
        :'document_type' => :'document_type',
        :'document_number' => :'document_number',
        :'document_number_of_parts' => :'document_number_of_parts',
        :'invoice_number' => :'invoice_number',
        :'invoice_date' => :'invoice_date',
        :'additional_charges' => :'additional_charges',
        :'total_fee_amount' => :'total_fee_amount',
        :'clearing_sequence' => :'clearing_sequence',
        :'clearing_count' => :'clearing_count',
        :'total_clearing_amount' => :'total_clearing_amount',
        :'number_of_passengers' => :'number_of_passengers',
        :'reservation_system_code' => :'reservation_system_code',
        :'process_identifier' => :'process_identifier',
        :'ticket_issue_date' => :'ticket_issue_date',
        :'electronic_ticket_indicator' => :'electronic_ticket_indicator',
        :'original_ticket_number' => :'original_ticket_number',
        :'purchase_type' => :'purchase_type',
        :'credit_reason_indicator' => :'credit_reason_indicator',
        :'ticket_change_indicator' => :'ticket_change_indicator',
        :'plan_number' => :'plan_number',
        :'arrival_date' => :'arrival_date',
        :'restricted_ticket_desciption' => :'restricted_ticket_desciption',
        :'exchange_ticket_amount' => :'exchange_ticket_amount',
        :'exchange_ticket_fee_amount' => :'exchange_ticket_fee_amount',
        :'reservation_type' => :'reservation_type',
        :'boarding_fee_amount' => :'boarding_fee_amount',
        :'legs' => :'legs',
        :'ancillary_information' => :'ancillary_information'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'booking_reference_number' => :'String',
        :'carrier_name' => :'String',
        :'ticket_issuer' => :'Ptsv2paymentsTravelInformationTransitAirlineTicketIssuer',
        :'ticket_number' => :'String',
        :'check_digit' => :'String',
        :'restricted_ticket_indicator' => :'Integer',
        :'transaction_type' => :'Integer',
        :'extended_payment_code' => :'String',
        :'passenger_name' => :'String',
        :'customer_code' => :'String',
        :'document_type' => :'String',
        :'document_number' => :'String',
        :'document_number_of_parts' => :'Integer',
        :'invoice_number' => :'String',
        :'invoice_date' => :'Integer',
        :'additional_charges' => :'String',
        :'total_fee_amount' => :'String',
        :'clearing_sequence' => :'String',
        :'clearing_count' => :'String',
        :'total_clearing_amount' => :'String',
        :'number_of_passengers' => :'Integer',
        :'reservation_system_code' => :'String',
        :'process_identifier' => :'String',
        :'ticket_issue_date' => :'String',
        :'electronic_ticket_indicator' => :'BOOLEAN',
        :'original_ticket_number' => :'String',
        :'purchase_type' => :'String',
        :'credit_reason_indicator' => :'String',
        :'ticket_change_indicator' => :'String',
        :'plan_number' => :'String',
        :'arrival_date' => :'String',
        :'restricted_ticket_desciption' => :'String',
        :'exchange_ticket_amount' => :'String',
        :'exchange_ticket_fee_amount' => :'String',
        :'reservation_type' => :'String',
        :'boarding_fee_amount' => :'String',
        :'legs' => :'Array<Ptsv2paymentsTravelInformationTransitAirlineLegs>',
        :'ancillary_information' => :'Ptsv2paymentsTravelInformationTransitAirlineAncillaryInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'bookingReferenceNumber')
        self.booking_reference_number = attributes[:'bookingReferenceNumber']
      end

      if attributes.has_key?(:'carrierName')
        self.carrier_name = attributes[:'carrierName']
      end

      if attributes.has_key?(:'ticketIssuer')
        self.ticket_issuer = attributes[:'ticketIssuer']
      end

      if attributes.has_key?(:'ticketNumber')
        self.ticket_number = attributes[:'ticketNumber']
      end

      if attributes.has_key?(:'checkDigit')
        self.check_digit = attributes[:'checkDigit']
      end

      if attributes.has_key?(:'restrictedTicketIndicator')
        self.restricted_ticket_indicator = attributes[:'restrictedTicketIndicator']
      end

      if attributes.has_key?(:'transactionType')
        self.transaction_type = attributes[:'transactionType']
      end

      if attributes.has_key?(:'extendedPaymentCode')
        self.extended_payment_code = attributes[:'extendedPaymentCode']
      end

      if attributes.has_key?(:'passengerName')
        self.passenger_name = attributes[:'passengerName']
      end

      if attributes.has_key?(:'customerCode')
        self.customer_code = attributes[:'customerCode']
      end

      if attributes.has_key?(:'documentType')
        self.document_type = attributes[:'documentType']
      end

      if attributes.has_key?(:'documentNumber')
        self.document_number = attributes[:'documentNumber']
      end

      if attributes.has_key?(:'documentNumberOfParts')
        self.document_number_of_parts = attributes[:'documentNumberOfParts']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'invoiceDate')
        self.invoice_date = attributes[:'invoiceDate']
      end

      if attributes.has_key?(:'additionalCharges')
        self.additional_charges = attributes[:'additionalCharges']
      end

      if attributes.has_key?(:'totalFeeAmount')
        self.total_fee_amount = attributes[:'totalFeeAmount']
      end

      if attributes.has_key?(:'clearingSequence')
        self.clearing_sequence = attributes[:'clearingSequence']
      end

      if attributes.has_key?(:'clearingCount')
        self.clearing_count = attributes[:'clearingCount']
      end

      if attributes.has_key?(:'totalClearingAmount')
        self.total_clearing_amount = attributes[:'totalClearingAmount']
      end

      if attributes.has_key?(:'numberOfPassengers')
        self.number_of_passengers = attributes[:'numberOfPassengers']
      end

      if attributes.has_key?(:'reservationSystemCode')
        self.reservation_system_code = attributes[:'reservationSystemCode']
      end

      if attributes.has_key?(:'processIdentifier')
        self.process_identifier = attributes[:'processIdentifier']
      end

      if attributes.has_key?(:'ticketIssueDate')
        self.ticket_issue_date = attributes[:'ticketIssueDate']
      end

      if attributes.has_key?(:'electronicTicketIndicator')
        self.electronic_ticket_indicator = attributes[:'electronicTicketIndicator']
      end

      if attributes.has_key?(:'originalTicketNumber')
        self.original_ticket_number = attributes[:'originalTicketNumber']
      end

      if attributes.has_key?(:'purchaseType')
        self.purchase_type = attributes[:'purchaseType']
      end

      if attributes.has_key?(:'creditReasonIndicator')
        self.credit_reason_indicator = attributes[:'creditReasonIndicator']
      end

      if attributes.has_key?(:'ticketChangeIndicator')
        self.ticket_change_indicator = attributes[:'ticketChangeIndicator']
      end

      if attributes.has_key?(:'planNumber')
        self.plan_number = attributes[:'planNumber']
      end

      if attributes.has_key?(:'arrivalDate')
        self.arrival_date = attributes[:'arrivalDate']
      end

      if attributes.has_key?(:'restrictedTicketDesciption')
        self.restricted_ticket_desciption = attributes[:'restrictedTicketDesciption']
      end

      if attributes.has_key?(:'exchangeTicketAmount')
        self.exchange_ticket_amount = attributes[:'exchangeTicketAmount']
      end

      if attributes.has_key?(:'exchangeTicketFeeAmount')
        self.exchange_ticket_fee_amount = attributes[:'exchangeTicketFeeAmount']
      end

      if attributes.has_key?(:'reservationType')
        self.reservation_type = attributes[:'reservationType']
      end

      if attributes.has_key?(:'boardingFeeAmount')
        self.boarding_fee_amount = attributes[:'boardingFeeAmount']
      end

      if attributes.has_key?(:'legs')
        if (value = attributes[:'legs']).is_a?(Array)
          self.legs = value
        end
      end

      if attributes.has_key?(:'ancillaryInformation')
        self.ancillary_information = attributes[:'ancillaryInformation']
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
    # @param [Object] booking_reference_number Value to be assigned
    def booking_reference_number=(booking_reference_number)
      @booking_reference_number = booking_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_name Value to be assigned
    def carrier_name=(carrier_name)
      @carrier_name = carrier_name
    end

    # Custom attribute writer method with validation
    # @param [Object] ticket_number Value to be assigned
    def ticket_number=(ticket_number)
      @ticket_number = ticket_number
    end

    # Custom attribute writer method with validation
    # @param [Object] check_digit Value to be assigned
    def check_digit=(check_digit)
      @check_digit = check_digit
    end

    # Custom attribute writer method with validation
    # @param [Object] extended_payment_code Value to be assigned
    def extended_payment_code=(extended_payment_code)
      @extended_payment_code = extended_payment_code
    end

    # Custom attribute writer method with validation
    # @param [Object] passenger_name Value to be assigned
    def passenger_name=(passenger_name)
      @passenger_name = passenger_name
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_code Value to be assigned
    def customer_code=(customer_code)
      @customer_code = customer_code
    end

    # Custom attribute writer method with validation
    # @param [Object] document_type Value to be assigned
    def document_type=(document_type)
      @document_type = document_type
    end

    # Custom attribute writer method with validation
    # @param [Object] document_number Value to be assigned
    def document_number=(document_number)
      @document_number = document_number
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      @invoice_number = invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] additional_charges Value to be assigned
    def additional_charges=(additional_charges)
      @additional_charges = additional_charges
    end

    # Custom attribute writer method with validation
    # @param [Object] total_fee_amount Value to be assigned
    def total_fee_amount=(total_fee_amount)
      @total_fee_amount = total_fee_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] clearing_sequence Value to be assigned
    def clearing_sequence=(clearing_sequence)
      @clearing_sequence = clearing_sequence
    end

    # Custom attribute writer method with validation
    # @param [Object] clearing_count Value to be assigned
    def clearing_count=(clearing_count)
      @clearing_count = clearing_count
    end

    # Custom attribute writer method with validation
    # @param [Object] total_clearing_amount Value to be assigned
    def total_clearing_amount=(total_clearing_amount)
      @total_clearing_amount = total_clearing_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] reservation_system_code Value to be assigned
    def reservation_system_code=(reservation_system_code)
      @reservation_system_code = reservation_system_code
    end

    # Custom attribute writer method with validation
    # @param [Object] process_identifier Value to be assigned
    def process_identifier=(process_identifier)
      @process_identifier = process_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] ticket_issue_date Value to be assigned
    def ticket_issue_date=(ticket_issue_date)
      @ticket_issue_date = ticket_issue_date
    end

    # Custom attribute writer method with validation
    # @param [Object] original_ticket_number Value to be assigned
    def original_ticket_number=(original_ticket_number)
      @original_ticket_number = original_ticket_number
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_type Value to be assigned
    def purchase_type=(purchase_type)
      @purchase_type = purchase_type
    end

    # Custom attribute writer method with validation
    # @param [Object] credit_reason_indicator Value to be assigned
    def credit_reason_indicator=(credit_reason_indicator)
      @credit_reason_indicator = credit_reason_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] ticket_change_indicator Value to be assigned
    def ticket_change_indicator=(ticket_change_indicator)
      @ticket_change_indicator = ticket_change_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_number Value to be assigned
    def plan_number=(plan_number)
      @plan_number = plan_number
    end

    # Custom attribute writer method with validation
    # @param [Object] arrival_date Value to be assigned
    def arrival_date=(arrival_date)
      @arrival_date = arrival_date
    end

    # Custom attribute writer method with validation
    # @param [Object] restricted_ticket_desciption Value to be assigned
    def restricted_ticket_desciption=(restricted_ticket_desciption)
      @restricted_ticket_desciption = restricted_ticket_desciption
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_ticket_amount Value to be assigned
    def exchange_ticket_amount=(exchange_ticket_amount)
      @exchange_ticket_amount = exchange_ticket_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_ticket_fee_amount Value to be assigned
    def exchange_ticket_fee_amount=(exchange_ticket_fee_amount)
      @exchange_ticket_fee_amount = exchange_ticket_fee_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] reservation_type Value to be assigned
    def reservation_type=(reservation_type)
      @reservation_type = reservation_type
    end

    # Custom attribute writer method with validation
    # @param [Object] boarding_fee_amount Value to be assigned
    def boarding_fee_amount=(boarding_fee_amount)
      @boarding_fee_amount = boarding_fee_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          booking_reference_number == o.booking_reference_number &&
          carrier_name == o.carrier_name &&
          ticket_issuer == o.ticket_issuer &&
          ticket_number == o.ticket_number &&
          check_digit == o.check_digit &&
          restricted_ticket_indicator == o.restricted_ticket_indicator &&
          transaction_type == o.transaction_type &&
          extended_payment_code == o.extended_payment_code &&
          passenger_name == o.passenger_name &&
          customer_code == o.customer_code &&
          document_type == o.document_type &&
          document_number == o.document_number &&
          document_number_of_parts == o.document_number_of_parts &&
          invoice_number == o.invoice_number &&
          invoice_date == o.invoice_date &&
          additional_charges == o.additional_charges &&
          total_fee_amount == o.total_fee_amount &&
          clearing_sequence == o.clearing_sequence &&
          clearing_count == o.clearing_count &&
          total_clearing_amount == o.total_clearing_amount &&
          number_of_passengers == o.number_of_passengers &&
          reservation_system_code == o.reservation_system_code &&
          process_identifier == o.process_identifier &&
          ticket_issue_date == o.ticket_issue_date &&
          electronic_ticket_indicator == o.electronic_ticket_indicator &&
          original_ticket_number == o.original_ticket_number &&
          purchase_type == o.purchase_type &&
          credit_reason_indicator == o.credit_reason_indicator &&
          ticket_change_indicator == o.ticket_change_indicator &&
          plan_number == o.plan_number &&
          arrival_date == o.arrival_date &&
          restricted_ticket_desciption == o.restricted_ticket_desciption &&
          exchange_ticket_amount == o.exchange_ticket_amount &&
          exchange_ticket_fee_amount == o.exchange_ticket_fee_amount &&
          reservation_type == o.reservation_type &&
          boarding_fee_amount == o.boarding_fee_amount &&
          legs == o.legs &&
          ancillary_information == o.ancillary_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [booking_reference_number, carrier_name, ticket_issuer, ticket_number, check_digit, restricted_ticket_indicator, transaction_type, extended_payment_code, passenger_name, customer_code, document_type, document_number, document_number_of_parts, invoice_number, invoice_date, additional_charges, total_fee_amount, clearing_sequence, clearing_count, total_clearing_amount, number_of_passengers, reservation_system_code, process_identifier, ticket_issue_date, electronic_ticket_indicator, original_ticket_number, purchase_type, credit_reason_indicator, ticket_change_indicator, plan_number, arrival_date, restricted_ticket_desciption, exchange_ticket_amount, exchange_ticket_fee_amount, reservation_type, boarding_fee_amount, legs, ancillary_information].hash
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
