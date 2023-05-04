=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SibApiV3Sdk
  class DealsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get deal attributes
    # @param [Hash] opts the optional parameters
    # @return [DealAttributes]
    def crm_attributes_deals_get(opts = {})
      data, _status_code, _headers = crm_attributes_deals_get_with_http_info(opts)
      data
    end

    # Get deal attributes
    # @param [Hash] opts the optional parameters
    # @return [Array<(DealAttributes, Fixnum, Hash)>] DealAttributes data, response status code and response headers
    def crm_attributes_deals_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_attributes_deals_get ...'
      end
      # resource path
      local_var_path = '/crm/attributes/deals'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DealAttributes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_attributes_deals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all deals
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_attributes Filter by attrbutes. If you have filter for owner on your side please send it as &#x60;attributes.owner&#x60;.\&quot;
    # @option opts [String] :filter_linked_companies_ids Filter by linked companies ids
    # @option opts [String] :filter_linked_contacts_ids Filter by linked companies ids
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @option opts [String] :sort_by The field used to sort field names.
    # @return [DealsList]
    def crm_deals_get(opts = {})
      data, _status_code, _headers = crm_deals_get_with_http_info(opts)
      data
    end

    # Get all deals
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_attributes Filter by attrbutes. If you have filter for owner on your side please send it as &#x60;attributes.owner&#x60;.\&quot;
    # @option opts [String] :filter_linked_companies_ids Filter by linked companies ids
    # @option opts [String] :filter_linked_contacts_ids Filter by linked companies ids
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @option opts [String] :sort_by The field used to sort field names.
    # @return [Array<(DealsList, Fixnum, Hash)>] DealsList data, response status code and response headers
    def crm_deals_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/crm/deals'

      # query parameters
      query_params = {}
      query_params[:'filter[attributes]'] = opts[:'filter_attributes'] if !opts[:'filter_attributes'].nil?
      query_params[:'filter[linkedCompaniesIds]'] = opts[:'filter_linked_companies_ids'] if !opts[:'filter_linked_companies_ids'].nil?
      query_params[:'filter[linkedContactsIds]'] = opts[:'filter_linked_contacts_ids'] if !opts[:'filter_linked_contacts_ids'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DealsList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a deal
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_deals_id_delete(id, opts = {})
      crm_deals_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a deal
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_deals_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DealsApi.crm_deals_id_delete"
      end
      # resource path
      local_var_path = '/crm/deals/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a deal
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Deal]
    def crm_deals_id_get(id, opts = {})
      data, _status_code, _headers = crm_deals_id_get_with_http_info(id, opts)
      data
    end

    # Get a deal
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Deal, Fixnum, Hash)>] Deal data, response status code and response headers
    def crm_deals_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DealsApi.crm_deals_id_get"
      end
      # resource path
      local_var_path = '/crm/deals/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Deal')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a deal
    # @param id 
    # @param body Updated deal details.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_deals_id_patch(id, body, opts = {})
      crm_deals_id_patch_with_http_info(id, body, opts)
      nil
    end

    # Update a deal
    # @param id 
    # @param body Updated deal details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_deals_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_id_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DealsApi.crm_deals_id_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DealsApi.crm_deals_id_patch"
      end
      # resource path
      local_var_path = '/crm/deals/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Link and Unlink a deal with contacts and companies
    # @param id 
    # @param body Linked / Unlinked contacts and companies ids.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_deals_link_unlink_id_patch(id, body, opts = {})
      crm_deals_link_unlink_id_patch_with_http_info(id, body, opts)
      nil
    end

    # Link and Unlink a deal with contacts and companies
    # @param id 
    # @param body Linked / Unlinked contacts and companies ids.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_deals_link_unlink_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_link_unlink_id_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DealsApi.crm_deals_link_unlink_id_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DealsApi.crm_deals_link_unlink_id_patch"
      end
      # resource path
      local_var_path = '/crm/deals/link-unlink/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_link_unlink_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a deal
    # @param body Deal create data.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse201]
    def crm_deals_post(body, opts = {})
      data, _status_code, _headers = crm_deals_post_with_http_info(body, opts)
      data
    end

    # Create a deal
    # @param body Deal create data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse201, Fixnum, Hash)>] InlineResponse201 data, response status code and response headers
    def crm_deals_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_deals_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DealsApi.crm_deals_post"
      end
      # resource path
      local_var_path = '/crm/deals'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse201')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_deals_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get pipeline stages
    # @param [Hash] opts the optional parameters
    # @return [Pipeline]
    def crm_pipeline_details_get(opts = {})
      data, _status_code, _headers = crm_pipeline_details_get_with_http_info(opts)
      data
    end

    # Get pipeline stages
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pipeline, Fixnum, Hash)>] Pipeline data, response status code and response headers
    def crm_pipeline_details_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DealsApi.crm_pipeline_details_get ...'
      end
      # resource path
      local_var_path = '/crm/pipeline/details'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Pipeline')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DealsApi#crm_pipeline_details_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
