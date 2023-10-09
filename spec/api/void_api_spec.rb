=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::VoidApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VoidApi' do
  before do
    # run before each test
    @instance = CyberSource::VoidApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VoidApi' do
    it 'should create an instance of VoidApi' do
      expect(@instance).to be_instance_of(CyberSource::VoidApi)
    end
  end

  # unit tests for mit_void
  # Timeout Void
  # This is to void a previous payment, capture, refund, or credit that merchant does not receive a reply(Mostly due to timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -&gt; transactionId in your payment, capture, refund, or credit API call and use same transactionId in this API request payload to reverse the payment.
  # @param mit_void_request 
  # @param [Hash] opts the optional parameters
  # @return [PtsV2PaymentsVoidsPost201Response]
  describe 'mit_void test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for void_capture
  # Void a Capture
  # Refund a capture API is only used, if you have requested Capture independenlty using [/pts/v2/payments/{id}/captures](https://developer.cybersource.com/api-reference-assets/index.html#payments_capture) API call. Include the capture ID in the POST request to cancel the capture. 
  # @param void_capture_request 
  # @param id The capture ID returned from a previous capture request.
  # @param [Hash] opts the optional parameters
  # @return [PtsV2PaymentsVoidsPost201Response]
  describe 'void_capture test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for void_credit
  # Void a Credit
  # Include the credit ID in the POST request to cancel the credit.
  # @param void_credit_request 
  # @param id The credit ID returned from a previous credit request.
  # @param [Hash] opts the optional parameters
  # @return [PtsV2PaymentsVoidsPost201Response]
  describe 'void_credit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for void_payment
  # Void a Payment
  # Void a Payment API is only used, if you have requested Authorization and Capture together in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call. Include the payment ID in the POST request to cancel the payment. 
  # @param void_payment_request 
  # @param id The payment ID returned from a previous payment request.
  # @param [Hash] opts the optional parameters
  # @return [PtsV2PaymentsVoidsPost201Response]
  describe 'void_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for void_refund
  # Void a Refund
  # Include the refund ID in the POST request to cancel the refund.
  # @param void_refund_request 
  # @param id The refund ID returned from a previous refund request.
  # @param [Hash] opts the optional parameters
  # @return [PtsV2PaymentsVoidsPost201Response]
  describe 'void_refund test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
