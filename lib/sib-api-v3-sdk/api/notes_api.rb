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
  class NotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all notes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity Filter by note entity type
    # @option opts [String] :entity_ids Filter by note entity IDs
    # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @return [NoteList]
    def crm_notes_get(opts = {})
      data, _status_code, _headers = crm_notes_get_with_http_info(opts)
      data
    end

    # Get all notes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity Filter by note entity type
    # @option opts [String] :entity_ids Filter by note entity IDs
    # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @return [Array<(NoteList, Fixnum, Hash)>] NoteList data, response status code and response headers
    def crm_notes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.crm_notes_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'entity'] && !['companies', 'deals', 'contacts'].include?(opts[:'entity'])
        fail ArgumentError, 'invalid value for "entity", must be one of companies, deals, contacts'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/crm/notes'

      # query parameters
      query_params = {}
      query_params[:'entity'] = opts[:'entity'] if !opts[:'entity'].nil?
      query_params[:'entityIds'] = opts[:'entity_ids'] if !opts[:'entity_ids'].nil?
      query_params[:'dateFrom'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'dateTo'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
        :return_type => 'NoteList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#crm_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a note
    # @param id Note ID to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_notes_id_delete(id, opts = {})
      crm_notes_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a note
    # @param id Note ID to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_notes_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.crm_notes_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.crm_notes_id_delete"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#crm_notes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a note
    # @param id Note ID to get
    # @param [Hash] opts the optional parameters
    # @return [Note]
    def crm_notes_id_get(id, opts = {})
      data, _status_code, _headers = crm_notes_id_get_with_http_info(id, opts)
      data
    end

    # Get a note
    # @param id Note ID to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(Note, Fixnum, Hash)>] Note data, response status code and response headers
    def crm_notes_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.crm_notes_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.crm_notes_id_get"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Note')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#crm_notes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a note
    # @param id Note ID to update
    # @param body Note data to update a note
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_notes_id_patch(id, body, opts = {})
      crm_notes_id_patch_with_http_info(id, body, opts)
      nil
    end

    # Update a note
    # @param id Note ID to update
    # @param body Note data to update a note
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_notes_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.crm_notes_id_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.crm_notes_id_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling NotesApi.crm_notes_id_patch"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#crm_notes_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a note
    # @param body Note data to create a note.
    # @param [Hash] opts the optional parameters
    # @return [NoteId]
    def crm_notes_post(body, opts = {})
      data, _status_code, _headers = crm_notes_post_with_http_info(body, opts)
      data
    end

    # Create a note
    # @param body Note data to create a note.
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteId, Fixnum, Hash)>] NoteId data, response status code and response headers
    def crm_notes_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.crm_notes_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling NotesApi.crm_notes_post"
      end
      # resource path
      local_var_path = '/crm/notes'

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
        :return_type => 'NoteId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#crm_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
