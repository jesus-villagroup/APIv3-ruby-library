=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SibApiV3Sdk
  class InboundParsingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set custom user_agent if explicitly passed in api
    # default will still remain Swagger-Codegen/#{VERSION}/ruby
    def setUserAgent(user_agent)
      @user_agent = user_agent
      if user_agent.is_a?(String) && user_agent.downcase.start_with?('sendinblue_')
        @api_client.default_headers['User-Agent'] = @user_agent
      end
    end

    
    # Get the list of all the events for the received emails.
    # This endpoint will show the list of all the events for the received emails.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender Email address of the sender.
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month.
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
    # @option opts [Integer] :limit Number of documents returned per page (default to 100)
    # @option opts [Integer] :offset Index of the first document on the page (default to 0)
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation (default to desc)
    # @return [GetInboundEmailEvents]
    def get_inbound_email_events(opts = {})
      data, _status_code, _headers = get_inbound_email_events_with_http_info(opts)
      data
    end

    # Get the list of all the events for the received emails.
    # This endpoint will show the list of all the events for the received emails.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender Email address of the sender.
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month.
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
    # @option opts [Integer] :limit Number of documents returned per page
    # @option opts [Integer] :offset Index of the first document on the page
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
    # @return [Array<(GetInboundEmailEvents, Fixnum, Hash)>] GetInboundEmailEvents data, response status code and response headers
    def get_inbound_email_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboundParsingApi.get_inbound_email_events ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InboundParsingApi.get_inbound_email_events, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/inbound/events'

      # query parameters
      query_params = {}
      query_params[:'sender'] = opts[:'sender'] if !opts[:'sender'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
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
        :return_type => 'GetInboundEmailEvents')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboundParsingApi#get_inbound_email_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetch all events history for one particular received email.
    # This endpoint will show the list of all events history for one particular received email.
    # @param uuid UUID to fetch events specific to recieved email
    # @param [Hash] opts the optional parameters
    # @return [GetInboundEmailEventsByUuid]
    def get_inbound_email_events_by_uuid(uuid, opts = {})
      data, _status_code, _headers = get_inbound_email_events_by_uuid_with_http_info(uuid, opts)
      data
    end

    # Fetch all events history for one particular received email.
    # This endpoint will show the list of all events history for one particular received email.
    # @param uuid UUID to fetch events specific to recieved email
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetInboundEmailEventsByUuid, Fixnum, Hash)>] GetInboundEmailEventsByUuid data, response status code and response headers
    def get_inbound_email_events_by_uuid_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboundParsingApi.get_inbound_email_events_by_uuid ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling InboundParsingApi.get_inbound_email_events_by_uuid"
      end
      # resource path
      local_var_path = '/inbound/events/{uuid}'.sub('{' + 'uuid' + '}', uuid.to_s)

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
        :return_type => 'GetInboundEmailEventsByUuid')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboundParsingApi#get_inbound_email_events_by_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
