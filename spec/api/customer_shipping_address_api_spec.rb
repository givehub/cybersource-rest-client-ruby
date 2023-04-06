=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::CustomerShippingAddressApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerShippingAddressApi' do
  before do
    # run before each test
    @instance = CyberSource::CustomerShippingAddressApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerShippingAddressApi' do
    it 'should create an instance of CustomerShippingAddressApi' do
      expect(@instance).to be_instance_of(CyberSource::CustomerShippingAddressApi)
    end
  end

  # unit tests for delete_customer_shipping_address
  # Delete a Customer Shipping Address
  # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Deleting a Customers Shipping Address**&lt;br&gt;Your system can use this API to delete an existing Shipping Address for a Customer.&lt;br&gt;If a customer has more than one Shipping Address then the default Shipping Address cannot be deleted without first selecting a [new default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body). 
  # @param customer_id The Id of a Customer.
  # @param shipping_address_id The Id of a shipping address.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [nil]
  describe 'delete_customer_shipping_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_shipping_address
  # Retrieve a Customer Shipping Address
  # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving a Customer Shipping Address**&lt;br&gt;Your system can use this API to retrieve an existing Shipping Address for a Customer.&lt;br&gt;To perform a payment with a particular Shipping Address simply specify the [Shipping Address Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
  # @param customer_id The Id of a Customer.
  # @param shipping_address_id The Id of a shipping address.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
  describe 'get_customer_shipping_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_shipping_addresses_list
  # List Shipping Addresses for a Customer
  # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving all Customer Shipping Addresses**&lt;br&gt;Your system can use this API to retrieve all existing Shipping Addresses for a Customer. 
  # @param customer_id The Id of a Customer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0.
  # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
  # @return [ShippingAddressListForCustomer]
  describe 'get_customer_shipping_addresses_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_customers_shipping_address
  # Update a Customer Shipping Address
  # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Updating a Customers Shipping Address**&lt;br&gt;Your system can use this API to update an existing Shipping Addresses for a Customer, including selecting a [default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body) for use in payments. 
  # @param customer_id The Id of a Customer.
  # @param shipping_address_id The Id of a shipping address.
  # @param patch_customer_shipping_address_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
  # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
  describe 'patch_customers_shipping_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_customer_shipping_address
  # Create a Customer Shipping Address
  # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Creating a Customer Shipping Address**&lt;br&gt;Your system can use this API to create an existing Customers default or non default Shipping Address.&lt;br&gt;You can also create additional Customer Shipping Addresses via the [Payments API](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-create-default-payment-instrument-shipping-address-for-existing-customer_liveconsole-tab-request-body). 
  # @param customer_id The Id of a Customer.
  # @param post_customer_shipping_address_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
  # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
  describe 'post_customer_shipping_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
