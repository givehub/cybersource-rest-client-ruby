=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::InstrumentIdentifierApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InstrumentIdentifierApi' do
  before do
    # run before each test
    @instance = CyberSource::InstrumentIdentifierApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstrumentIdentifierApi' do
    it 'should create an instance of InstrumentIdentifierApi' do
      expect(@instance).to be_instance_of(CyberSource::InstrumentIdentifierApi)
    end
  end

  # unit tests for delete_instrument_identifier
  # Delete an Instrument Identifier
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing &lt;br&gt;and account numbers.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the &lt;br&gt;Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) &lt;br&gt;or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Deleting an Instrument Identifier**&lt;br&gt;Your system can use this API to delete an existing Instrument Identifier.&lt;br&gt;An Instrument Identifier cannot be deleted if it is linked to any Payment Instruments.&lt;br&gt;You can [retrieve all Payment Instruments associated with an Instrument Identifier](#token-management_instrument-identifier_list-payment-instruments-for-an-instrument-identifier). 
  # @param instrument_identifier_id The Id of an Instrument Identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [nil]
  describe 'delete_instrument_identifier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instrument_identifier
  # Retrieve an Instrument Identifier
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).&lt;br&gt;&lt;br&gt;**Retrieving an Instrument Identifier**&lt;br&gt;Your system can use this API to retrieve an Instrument Identifier.&lt;br&gt;**Note: the actual card data will be masked.**&lt;br&gt;The Instrument Identifier will also be returned when retrieving a [Customer](#token-management_customer_retrieve-a-customer), [Customer Payment Instrument](#token-management_customer-payment-instrument_retrieve-a-customer-payment-instrument) or [Standalone Payment Instrument](#token-management_payment-instrument_retrieve-a-payment-instrument).|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Payment Network Tokens**&lt;br&gt;Network tokens perform better than regular card numbers and they are not necessarily invalidated when a cardholder loses their card, or it expires.&lt;br&gt;A Payment Network Token will be automatically created and used in future payments if you are enabled for the service.&lt;br&gt;A Payment Network Token can also be [provisioned for an existing Instrument Identifier](#token-management_instrument-identifier_enroll-an-instrument-identifier-for-payment-network-token).&lt;br&gt;For more information about Payment Network Tokens see the Developer Guide.&lt;br&gt;&lt;br&gt;**Payments with Instrument Identifiers**&lt;br&gt;To perform a payment with an Instrument Identifier simply specify the [Instrument Identifier Id in the payments request along with the expiration date, card type, &amp; billing address](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-instrument-identifier-token-id_liveconsole-tab-request-body).&lt;br&gt;When an Instrument Identifier is used in a payment the **_previousTransactionId_** and **_originalAuthorizedAmount_** values are automatically recorded.&lt;br&gt;These values will be added for you to future Merchant Initiated Transaction payments. 
  # @param instrument_identifier_id The Id of an Instrument Identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifier]
  describe 'get_instrument_identifier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instrument_identifier_payment_instruments_list
  # List Payment Instruments for an Instrument Identifier
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing &lt;br&gt;and account numbers.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the &lt;br&gt;Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) &lt;br&gt;or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving all Payment Instruments associated with an Instrument Identifier**&lt;br&gt;Your system can use this API to retrieve all Payment Instruments linked to an Instrument Identifier. 
  # @param instrument_identifier_id The Id of an Instrument Identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0.
  # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
  # @return [PaymentInstrumentList]
  describe 'get_instrument_identifier_payment_instruments_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_instrument_identifier
  # Update an Instrument Identifier
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Updating an Instrument Identifier**&lt;br&gt;When an Instrument Identifier is used in a payment the **_previousTransactionId_** and **_originalAuthorizedAmount_** values are automatically recorded.&lt;br&gt;These values will be added for you to future Merchant Initiated Transaction payments.&lt;br&gt;Your system can use this API to update these values. 
  # @param instrument_identifier_id The Id of an Instrument Identifier.
  # @param patch_instrument_identifier_request Specify the previous transaction Id to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
  # @return [Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifier]
  describe 'patch_instrument_identifier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_instrument_identifier
  # Create an Instrument Identifier
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).&lt;br&gt;&lt;br&gt;**Creating an Instrument Identifier**&lt;br&gt;It is recommended you [create an Instrument Identifier via a Payment Authorization](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-instrument-identifier-token-creation_liveconsole-tab-request-body), this can be for a zero amount.&lt;br&gt;An Instrument Identifier will also be created if you [create a Customer via a Payment Authorization](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-customer-token-creation_liveconsole-tab-request-body)&lt;br&gt;In Europe: You should perform Payer Authentication alongside the Authorization.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Payment Network Tokens**&lt;br&gt;Network tokens perform better than regular card numbers and they are not necessarily invalidated when a cardholder loses their card, or it expires.&lt;br&gt;A Payment Network Token will be automatically created and used in future payments if you are enabled for the service.&lt;br&gt;A Payment Network Token can also be [provisioned for an existing Instrument Identifier](#token-management_instrument-identifier_enroll-an-instrument-identifier-for-payment-network-token).&lt;br&gt;For more information about Payment Network Tokens see the Developer Guide.&lt;br&gt;&lt;br&gt;**Payments with Instrument Identifiers**&lt;br&gt;To perform a payment with an Instrument Identifier simply specify the [Instrument Identifier Id in the payments request along with the expiration date, card type, &amp; billing address](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-instrument-identifier-token-id_liveconsole-tab-request-body).&lt;br&gt;When an Instrument Identifier is used in a payment the **_previousTransactionId_** and **_originalAuthorizedAmount_** values are automatically recorded.&lt;br&gt;These values will be added for you to future Merchant Initiated Transaction payments. 
  # @param post_instrument_identifier_request Specify either a Card, Bank Account or Enrollable Card
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifier]
  describe 'post_instrument_identifier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_instrument_identifier_enrollment
  # Enroll an Instrument Identifier for Payment Network Token
  # |  |  |  | | --- | --- | --- | |**Instrument Identifiers**&lt;br&gt;An Instrument Identifier represents either a card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;The same token Id is returned for a specific card number or bank account &amp; routing number allowing the Instrument Identifier Id to be used for cross-channel payment tracking.&lt;br&gt;An Instrument Identifier can exist independently but also be associated with a [Customer Payment Instrument](#token-management_customer-payment-instrument_create-a-customer-payment-instrument) or [Standalone Payment Instrument](#token-management_payment-instrument_create-a-payment-instrument).|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Enroll an Instrument Identifier for a Payment Network Token**&lt;br&gt;Your system can use this API to provision a Network token for an existing Instrument Identifier.&lt;br&gt;Network tokens perform better than regular card numbers and they are not necessarily invalidated when a cardholder loses their card, or it expires.&lt;br&gt;A Network token can be [provisioned when creating an Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier_samplerequests-dropdown_create-instrument-identifier-card-enroll-for-network-token_liveconsole-tab-request-body).This will occur automatically when creating a [Customer](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-customer-token-creation_liveconsole-tab-request-body), [Payment Instrument](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-create-default-payment-instrument-shipping-address-for-existing-customer_liveconsole-tab-request-body) or [Instrument Identifier](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-instrument-identifier-token-creation_liveconsole-tab-request-body) via the Payments API.&lt;br&gt;For more information about Payment Network Tokens see the Developer Guide. 
  # @param instrument_identifier_id The Id of an Instrument Identifier.
  # @param post_instrument_identifier_enrollment_request Specify Enrollable Card details
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [nil]
  describe 'post_instrument_identifier_enrollment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
