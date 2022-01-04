=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::MasterAccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MasterAccountApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::MasterAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MasterAccountApi' do
    it 'should create an instance of MasterAccountApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::MasterAccountApi)
    end
  end

  # unit tests for corporate_master_account_get
  # Get the details of requested master account
  # This endpoint will provide the details of the master account.
  # @param [Hash] opts the optional parameters
  # @return [MasterDetailsResponse]
  describe 'corporate_master_account_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for corporate_sub_account_get
  # Get the list of all the sub-accounts of the master account.
  # This endpoint will provide the list all the sub-accounts of the master account.
  # @param offset Page number of sub-accounts listing
  # @param limit Number of sub-accounts to be displayed on each page
  # @param [Hash] opts the optional parameters
  # @return [SubAccountsResponse]
  describe 'corporate_sub_account_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for corporate_sub_account_id_get
  # Get sub-account details
  # This endpoint will provide the details of specified sub-account organization
  # @param id Id of the sub-account organization
  # @param [Hash] opts the optional parameters
  # @return [SubAccountDetailsResponse]
  describe 'corporate_sub_account_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for corporate_sub_account_id_plan_put
  # Update sub-account plan
  # This endpoint will update the sub-account plan
  # @param id Id of the sub-account organization
  # @param update_plan_details Values to update a sub-account plan
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'corporate_sub_account_id_plan_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for corporate_sub_account_post
  # Create a new sub-account under a master account.
  # This endpoint will create a new sub-account under a master account
  # @param sub_account_create values to create new sub-account
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'corporate_sub_account_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for corporate_sub_account_sso_token_post
  # Generate SSO token to access Sendinblue
  # This endpoint generates an sso token to authenticate and access a sub-account of the master using the account endpoint https://app.sendinblue.com/account/login/sub-account/sso/[token], where [token] will be replaced with actual token.
  # @param sso_token_request Values to generate SSO token for sub-account
  # @param [Hash] opts the optional parameters
  # @return [GetSsoToken]
  describe 'corporate_sub_account_sso_token_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
