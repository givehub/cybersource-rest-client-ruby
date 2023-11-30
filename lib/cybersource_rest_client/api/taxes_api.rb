=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Calculate Taxes
    # The tax calculation service provides real-time sales tax and VAT calculations for orders placed with your business worldwide.  It enhances your ability to conduct business globally and enables you to avoid the risk and complexity of managing online tax calculation.  The service supports product-based tax rules and exemptions for goods and services.  The tax rates are updated twice a month and calculations include sub-level detail (rates per taxing jurisdiction, names and types of jurisdictions). Implementation guidance, list of supported countries, and information on tax reporting are in the [Tax User Guide](https://developer.cybersource.com/docs/cybs/en-us/tax-calculation/developer/all/rest/tax-calculation/tax-overview.html). 
    #
    # @param tax_request 
    # @param [Hash] opts the optional parameters
    # @return [VasV2PaymentsPost201Response]
    #
    def calculate_tax(tax_request, opts = {})
      data, status_code, headers = calculate_tax_with_http_info(tax_request, opts)
      return data, status_code, headers
    end

    # Calculate Taxes
    # The tax calculation service provides real-time sales tax and VAT calculations for orders placed with your business worldwide.  It enhances your ability to conduct business globally and enables you to avoid the risk and complexity of managing online tax calculation.  The service supports product-based tax rules and exemptions for goods and services.  The tax rates are updated twice a month and calculations include sub-level detail (rates per taxing jurisdiction, names and types of jurisdictions). Implementation guidance, list of supported countries, and information on tax reporting are in the [Tax User Guide](https://developer.cybersource.com/docs/cybs/en-us/tax-calculation/developer/all/rest/tax-calculation/tax-overview.html). 
    # @param tax_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VasV2PaymentsPost201Response, Fixnum, Hash)>] VasV2PaymentsPost201Response data, response status code and response headers
    def calculate_tax_with_http_info(tax_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: TaxesApi.calculate_tax ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'tax_request' is set
      if @api_client.config.client_side_validation && tax_request.nil?
        fail ArgumentError, "Missing the required parameter 'tax_request' when calling TaxesApi.calculate_tax"
      end
      # resource path
      local_var_path = 'vas/v2/tax'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tax_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'TaxRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VasV2PaymentsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: TaxesApi#calculate_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Void Taxes
    # Pass the Tax Request ID in the PATCH request to void the committed tax calculation.
    #
    # @param void_tax_request 
    # @param id The tax ID returned from a previous request.
    # @param [Hash] opts the optional parameters
    # @return [VasV2TaxVoid200Response]
    #
    def void_tax(void_tax_request, id, opts = {})
      data, status_code, headers = void_tax_with_http_info(void_tax_request, id, opts)
      return data, status_code, headers
    end

    # Void Taxes
    # Pass the Tax Request ID in the PATCH request to void the committed tax calculation.
    # @param void_tax_request 
    # @param id The tax ID returned from a previous request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VasV2TaxVoid200Response, Fixnum, Hash)>] VasV2TaxVoid200Response data, response status code and response headers
    def void_tax_with_http_info(void_tax_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: TaxesApi.void_tax ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'void_tax_request' is set
      if @api_client.config.client_side_validation && void_tax_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_tax_request' when calling TaxesApi.void_tax"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.void_tax"
      end
      # resource path
      local_var_path = 'vas/v2/tax/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(void_tax_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'VoidTaxRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VasV2TaxVoid200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: TaxesApi#void_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
