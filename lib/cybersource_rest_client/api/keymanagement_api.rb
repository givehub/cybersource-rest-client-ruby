=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class KeymanagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Search Keys
    # Search one or more Keys
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This allows you to specify the page offset from the resulting list resultset you want the records to be returned
    # @option opts [Integer] :limit This allows you to specify the total number of records to be returned off the resulting list resultset
    # @option opts [String] :sort This allows you to specify a comma separated list of fields in the order which the resulting list resultset must be sorted.
    # @option opts [Array<String>] :organization_ids List of Orgaization Ids to search. The maximum size of the organization Ids list is 1. The maximum length of Organization Id is 30.
    # @option opts [Array<String>] :key_ids List of Key Ids to search. The maximum size of the Key Ids list is 1
    # @option opts [Array<String>] :key_types Key Type, Possible values -  certificate, password, pgp and scmp_api. When Key Type is provided atleast one more filter needs to be provided
    # @option opts [DateTime] :expiration_start_date Expiry Filter Start Date. When Expiration Date filter is provided, atleast one more filter needs to be provided
    # @option opts [DateTime] :expiration_end_date Expiry Filter End Date. When Expiration Date filter is provided, atleast one more filter needs to be provided
    # @return [InlineResponse2001]
    def search_keys(opts = {})
      data, status_code, headers = search_keys_with_http_info(opts)
      return data, status_code, headers
    end

    # Search Keys
    # Search one or more Keys
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This allows you to specify the page offset from the resulting list resultset you want the records to be returned
    # @option opts [Integer] :limit This allows you to specify the total number of records to be returned off the resulting list resultset
    # @option opts [String] :sort This allows you to specify a comma separated list of fields in the order which the resulting list resultset must be sorted.
    # @option opts [Array<String>] :organization_ids List of Orgaization Ids to search. The maximum size of the organization Ids list is 1. The maximum length of Organization Id is 30.
    # @option opts [Array<String>] :key_ids List of Key Ids to search. The maximum size of the Key Ids list is 1
    # @option opts [Array<String>] :key_types Key Type, Possible values -  certificate, password, pgp and scmp_api. When Key Type is provided atleast one more filter needs to be provided
    # @option opts [DateTime] :expiration_start_date Expiry Filter Start Date. When Expiration Date filter is provided, atleast one more filter needs to be provided
    # @option opts [DateTime] :expiration_end_date Expiry Filter End Date. When Expiration Date filter is provided, atleast one more filter needs to be provided
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def search_keys_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: KeymanagementApi.search_keys ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      #if @api_client.config.client_side_validation && !opts[:'expiration_start_date'].nil? && opts[:'expiration_start_date'] !~ Regexp.new(/yyyy-mm-dd/)
        #fail ArgumentError, "invalid value for 'opts[:\"expiration_start_date\"]' when calling KeymanagementApi.search_keys, must conform to the pattern /yyyy-mm-dd/."
      #end

      #if @api_client.config.client_side_validation && !opts[:'expiration_end_date'].nil? && opts[:'expiration_end_date'] !~ Regexp.new(/yyyy-mm-dd/)
        #fail ArgumentError, "invalid value for 'opts[:\"expiration_end_date\"]' when calling KeymanagementApi.search_keys, must conform to the pattern /yyyy-mm-dd/."
      #end

      # resource path
      local_var_path = 'kms/v2/keys'

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'organizationIds'] = @api_client.build_collection_param(opts[:'organization_ids'], :csv) if !opts[:'organization_ids'].nil?
      query_params[:'keyIds'] = @api_client.build_collection_param(opts[:'key_ids'], :csv) if !opts[:'key_ids'].nil?
      query_params[:'keyTypes'] = @api_client.build_collection_param(opts[:'key_types'], :csv) if !opts[:'key_types'].nil?
      query_params[:'expirationStartDate'] = opts[:'expiration_start_date'] if !opts[:'expiration_start_date'].nil?
      query_params[:'expirationEndDate'] = opts[:'expiration_end_date'] if !opts[:'expiration_end_date'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      if 'GET' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: KeymanagementApi#search_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
