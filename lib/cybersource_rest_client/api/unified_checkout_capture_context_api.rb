=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class UnifiedCheckoutCaptureContextApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Generate Unified Checkout Capture Context
    # Generate a one-time use capture context used for the invocation of Unified Checkout. The Request wil contain all of the parameters for how Unified Checkout will operate within a client webpage. The resulting payload will be a JWT signed object that can be used to initiate Unified Checkout within a merchant web page
    # @param generate_unified_checkout_capture_context_request 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def generate_unified_checkout_capture_context(generate_unified_checkout_capture_context_request, opts = {})
      data, status_code, headers = generate_unified_checkout_capture_context_with_http_info(generate_unified_checkout_capture_context_request, opts)
      return data, status_code, headers
    end

    # Generate Unified Checkout Capture Context
    # Generate a one-time use capture context used for the invocation of Unified Checkout. The Request wil contain all of the parameters for how Unified Checkout will operate within a client webpage. The resulting payload will be a JWT signed object that can be used to initiate Unified Checkout within a merchant web page
    # @param generate_unified_checkout_capture_context_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def generate_unified_checkout_capture_context_with_http_info(generate_unified_checkout_capture_context_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: UnifiedCheckoutCaptureContextApi.generate_unified_checkout_capture_context ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'generate_unified_checkout_capture_context_request' is set
      if @api_client.config.client_side_validation && generate_unified_checkout_capture_context_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_unified_checkout_capture_context_request' when calling UnifiedCheckoutCaptureContextApi.generate_unified_checkout_capture_context"
      end
      # resource path
      local_var_path = 'up/v1/capture-contexts'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/jwt'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(generate_unified_checkout_capture_context_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: UnifiedCheckoutCaptureContextApi#generate_unified_checkout_capture_context\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
