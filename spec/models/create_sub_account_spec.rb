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
require 'date'

# Unit tests for SibApiV3Sdk::CreateSubAccount
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateSubAccount' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::CreateSubAccount.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateSubAccount' do
    it 'should create an instance of CreateSubAccount' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::CreateSubAccount)
    end
  end
  describe 'test attribute "company_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "language"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["en", "fr", "it", "es", "pt", "de"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.language = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "timezone"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
