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
  class TransactionalSMSApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set custom user_agent if explicitly passed in api
    # default will still remain Swagger-Codegen/#{VERSION}/ruby
    def setUserAgent(user_agent)
      @user_agent = user_agent
      if user_agent.is_a?(String) && user_agent.downcase.start_with?('sendinblue_', 'brevo_')
        @api_client.default_headers['User-Agent'] = @user_agent
      end
    end
    
    # Get all your SMS activity (unaggregated events)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :offset Index of the first document of the page (default to 0)
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :phone_number Filter the report for a specific phone number
    # @option opts [String] :event Filter the report for specific events
    # @option opts [String] :tags Filter the report for specific tags passed as a serialized urlencoded array
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed (default to desc)
    # @return [GetSmsEventReport]
    def get_sms_events(opts = {})
      data, _status_code, _headers = get_sms_events_with_http_info(opts)
      data
    end

    # Get all your SMS activity (unaggregated events)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :phone_number Filter the report for a specific phone number
    # @option opts [String] :event Filter the report for specific events
    # @option opts [String] :tags Filter the report for specific tags passed as a serialized urlencoded array
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
    # @return [Array<(GetSmsEventReport, Fixnum, Hash)>] GetSmsEventReport data, response status code and response headers
    def get_sms_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionalSMSApi.get_sms_events ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionalSMSApi.get_sms_events, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && opts[:'event'] && !['bounces', 'hardBounces', 'softBounces', 'delivered', 'sent', 'accepted', 'unsubscription', 'replies', 'blocked'].include?(opts[:'event'])
        fail ArgumentError, 'invalid value for "event", must be one of bounces, hardBounces, softBounces, delivered, sent, accepted, unsubscription, replies, blocked'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/transactionalSMS/statistics/events'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'phoneNumber'] = opts[:'phone_number'] if !opts[:'phone_number'].nil?
      query_params[:'event'] = opts[:'event'] if !opts[:'event'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
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
        :return_type => 'GetSmsEventReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionalSMSApi#get_sms_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get your SMS activity aggregated over a period of time
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with startDate and endDate
    # @option opts [String] :tag Filter on a tag
    # @return [GetTransacAggregatedSmsReport]
    def get_transac_aggregated_sms_report(opts = {})
      data, _status_code, _headers = get_transac_aggregated_sms_report_with_http_info(opts)
      data
    end

    # Get your SMS activity aggregated over a period of time
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with startDate and endDate
    # @option opts [String] :tag Filter on a tag
    # @return [Array<(GetTransacAggregatedSmsReport, Fixnum, Hash)>] GetTransacAggregatedSmsReport data, response status code and response headers
    def get_transac_aggregated_sms_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionalSMSApi.get_transac_aggregated_sms_report ...'
      end
      # resource path
      local_var_path = '/transactionalSMS/statistics/aggregatedReport'

      # query parameters
      query_params = {}
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?

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
        :return_type => 'GetTransacAggregatedSmsReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionalSMSApi#get_transac_aggregated_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get your SMS activity aggregated per day
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Filter on a tag
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed (default to desc)
    # @return [GetTransacSmsReport]
    def get_transac_sms_report(opts = {})
      data, _status_code, _headers = get_transac_sms_report_with_http_info(opts)
      data
    end

    # Get your SMS activity aggregated per day
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
    # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Filter on a tag
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
    # @return [Array<(GetTransacSmsReport, Fixnum, Hash)>] GetTransacSmsReport data, response status code and response headers
    def get_transac_sms_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionalSMSApi.get_transac_sms_report ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/transactionalSMS/statistics/reports'

      # query parameters
      query_params = {}
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
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
        :return_type => 'GetTransacSmsReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionalSMSApi#get_transac_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send SMS message to a mobile number
    # @param send_transac_sms Values to send a transactional SMS
    # @param [Hash] opts the optional parameters
    # @return [SendSms]
    def send_transac_sms(send_transac_sms, opts = {})
      data, _status_code, _headers = send_transac_sms_with_http_info(send_transac_sms, opts)
      data
    end

    # Send SMS message to a mobile number
    # @param send_transac_sms Values to send a transactional SMS
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendSms, Fixnum, Hash)>] SendSms data, response status code and response headers
    def send_transac_sms_with_http_info(send_transac_sms, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionalSMSApi.send_transac_sms ...'
      end
      # verify the required parameter 'send_transac_sms' is set
      if @api_client.config.client_side_validation && send_transac_sms.nil?
        fail ArgumentError, "Missing the required parameter 'send_transac_sms' when calling TransactionalSMSApi.send_transac_sms"
      end
      # resource path
      local_var_path = '/transactionalSMS/sms'

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
      post_body = @api_client.object_to_http_body(send_transac_sms)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SendSms')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionalSMSApi#send_transac_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
