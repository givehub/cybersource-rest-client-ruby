=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class BillingAgreementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Standing Instruction Cancellation or Modification
    # Standing Instruction with or without Token
    #
    # @param modify_billing_agreement 
    # @param id ID for de-registration or cancellation of Billing Agreement
    # @param [Hash] opts the optional parameters
    # @return [PtsV2CreditsPost201Response1]
    #
    def billing_agreements_de_registration(modify_billing_agreement, id, opts = {})
      data, status_code, headers = billing_agreements_de_registration_with_http_info(modify_billing_agreement, id, opts)
      return data, status_code, headers
    end

    # Standing Instruction Cancellation or Modification
    # Standing Instruction with or without Token
    # @param modify_billing_agreement 
    # @param id ID for de-registration or cancellation of Billing Agreement
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2CreditsPost201Response1, Fixnum, Hash)>] PtsV2CreditsPost201Response1 data, response status code and response headers
    def billing_agreements_de_registration_with_http_info(modify_billing_agreement, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BillingAgreementsApi.billing_agreements_de_registration ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'modify_billing_agreement' is set
      if @api_client.config.client_side_validation && modify_billing_agreement.nil?
        fail ArgumentError, "Missing the required parameter 'modify_billing_agreement' when calling BillingAgreementsApi.billing_agreements_de_registration"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingAgreementsApi.billing_agreements_de_registration"
      end
      # resource path
      local_var_path = 'pts/v2/billing-agreements/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(modify_billing_agreement)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'ModifyBillingAgreement', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2CreditsPost201Response1')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BillingAgreementsApi#billing_agreements_de_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Standing Instruction intimation
    # Standing Instruction with or without Token.
    #
    # @param intimate_billing_agreement 
    # @param id ID for intimation of Billing Agreement
    # @param [Hash] opts the optional parameters
    # @return [PtsV2CreditsPost201Response1]
    #
    def billing_agreements_intimation(intimate_billing_agreement, id, opts = {})
      data, status_code, headers = billing_agreements_intimation_with_http_info(intimate_billing_agreement, id, opts)
      return data, status_code, headers
    end

    # Standing Instruction intimation
    # Standing Instruction with or without Token.
    # @param intimate_billing_agreement 
    # @param id ID for intimation of Billing Agreement
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2CreditsPost201Response1, Fixnum, Hash)>] PtsV2CreditsPost201Response1 data, response status code and response headers
    def billing_agreements_intimation_with_http_info(intimate_billing_agreement, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BillingAgreementsApi.billing_agreements_intimation ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'intimate_billing_agreement' is set
      if @api_client.config.client_side_validation && intimate_billing_agreement.nil?
        fail ArgumentError, "Missing the required parameter 'intimate_billing_agreement' when calling BillingAgreementsApi.billing_agreements_intimation"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingAgreementsApi.billing_agreements_intimation"
      end
      # resource path
      local_var_path = 'pts/v2/billing-agreements/{id}/intimations'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(intimate_billing_agreement)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'IntimateBillingAgreement', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2CreditsPost201Response1')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BillingAgreementsApi#billing_agreements_intimation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Standing Instruction completion registration
    # Standing Instruction with or without Token. Transaction amount in case First payment is coming along with registration. Only 2 decimal places allowed
    #
    # @param create_billing_agreement 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2CreditsPost201Response1]
    #
    def billing_agreements_registration(create_billing_agreement, opts = {})
      data, status_code, headers = billing_agreements_registration_with_http_info(create_billing_agreement, opts)
      return data, status_code, headers
    end

    # Standing Instruction completion registration
    # Standing Instruction with or without Token. Transaction amount in case First payment is coming along with registration. Only 2 decimal places allowed
    # @param create_billing_agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2CreditsPost201Response1, Fixnum, Hash)>] PtsV2CreditsPost201Response1 data, response status code and response headers
    def billing_agreements_registration_with_http_info(create_billing_agreement, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BillingAgreementsApi.billing_agreements_registration ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'create_billing_agreement' is set
      if @api_client.config.client_side_validation && create_billing_agreement.nil?
        fail ArgumentError, "Missing the required parameter 'create_billing_agreement' when calling BillingAgreementsApi.billing_agreements_registration"
      end
      # resource path
      local_var_path = 'pts/v2/billing-agreements'

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
      post_body = @api_client.object_to_http_body(create_billing_agreement)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'CreateBillingAgreement', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2CreditsPost201Response1')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BillingAgreementsApi#billing_agreements_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
