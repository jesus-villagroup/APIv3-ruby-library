=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.18

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::ResellerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ResellerApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::ResellerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResellerApi' do
    it 'should create an instance of ResellerApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::ResellerApi)
    end
  end

  # unit tests for add_credits
  # Add Email and/or SMS credits to a specific child account
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param add_credits Values to post to add credit to a specific child account
  # @param [Hash] opts the optional parameters
  # @return [RemainingCreditModel]
  describe 'add_credits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for associate_ip_to_child
  # Associate a dedicated IP to the child
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param ip IP to associate
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'associate_ip_to_child test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_child_domain
  # Create a domain for a child account
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param add_child_domain Sender domain to add for a specific child account. This will not be displayed to the parent account.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_child_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_reseller_child
  # Creates a reseller child
  # @param [Hash] opts the optional parameters
  # @option opts [CreateChild] :reseller_child reseller child to add
  # @return [CreateReseller]
  describe 'create_reseller_child test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_child_domain
  # Delete the sender domain of the reseller child based on the childIdentifier and domainName passed
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param domain_name Pass the existing domain that needs to be deleted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_child_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_reseller_child
  # Delete a single reseller child based on the child identifier supplied
  # @param child_identifier Either auth key or child id of reseller&#39;s child
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reseller_child test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dissociate_ip_from_child
  # Dissociate a dedicated IP to the child
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param ip IP to dissociate
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'dissociate_ip_from_child test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_child_account_creation_status
  # Get the status of a reseller&#39;s child account creation, whether it is successfully created (exists) or not based on the identifier supplied
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param [Hash] opts the optional parameters
  # @return [GetChildAccountCreationStatus]
  describe 'get_child_account_creation_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_child_domains
  # Get all sender domains for a specific child account
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param [Hash] opts the optional parameters
  # @return [GetChildDomains]
  describe 'get_child_domains test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_child_info
  # Get a child account&#39;s details
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param [Hash] opts the optional parameters
  # @return [GetChildInfo]
  describe 'get_child_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_reseller_childs
  # Get the list of all children accounts
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents for child accounts information per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @return [GetChildrenList]
  describe 'get_reseller_childs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sso_token
  # Get session token to access Sendinblue (SSO)
  # It returns a session [token] which will remain valid for a short period of time. A child account will be able to access a white-labeled section by using the following url pattern &#x3D;&gt; https:/email.mydomain.com/login/sso?token&#x3D;[token]
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param [Hash] opts the optional parameters
  # @return [GetSsoToken]
  describe 'get_sso_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_credits
  # Remove Email and/or SMS credits from a specific child account
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param remove_credits Values to post to remove email or SMS credits from a specific child account
  # @param [Hash] opts the optional parameters
  # @return [RemainingCreditModel]
  describe 'remove_credits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_child_account_status
  # Update info of reseller&#39;s child account status based on the childIdentifier supplied
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param update_child_account_status values to update in child account status
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_child_account_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_child_domain
  # Update the sender domain of reseller&#39;s child based on the childIdentifier and domainName passed
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param domain_name Pass the existing domain that needs to be updated
  # @param update_child_domain value to update for sender domain
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_child_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_reseller_child
  # Update info of reseller&#39;s child based on the child identifier supplied
  # @param child_identifier Either auth key or id of reseller&#39;s child
  # @param reseller_child values to update in child profile
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_reseller_child test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
