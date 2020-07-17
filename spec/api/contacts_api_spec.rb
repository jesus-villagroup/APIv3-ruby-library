=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::ContactsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::ContactsApi)
    end
  end

  # unit tests for add_contact_to_list
  # Add existing contacts to a list
  # @param list_id Id of the list
  # @param contact_emails Emails addresses of the contacts
  # @param [Hash] opts the optional parameters
  # @return [PostContactInfo]
  describe 'add_contact_to_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_attribute
  # Create contact attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the attribute
  # @param create_attribute Values to create an attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_contact
  # Create a contact
  # @param create_contact Values to create a contact
  # @param [Hash] opts the optional parameters
  # @return [CreateUpdateContactModel]
  describe 'create_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_doi_contact
  # Create Contact via DOI (Double-Opt-In) Flow
  # @param create_doi_contact Values to create the Double opt-in (DOI) contact
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_doi_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_folder
  # Create a folder
  # @param create_folder Name of the folder
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_list
  # Create a list
  # @param create_list Values to create a list
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_attribute
  # Delete an attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the existing attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_contact
  # Delete a contact
  # @param email Email (urlencoded) of the contact
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_folder
  # Delete a folder (and all its lists)
  # @param folder_id Id of the folder
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_list
  # Delete a list
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attributes
  # List all attributes
  # @param [Hash] opts the optional parameters
  # @return [GetAttributes]
  describe 'get_attributes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contact_info
  # Get a contact&#39;s details
  # @param email Email (urlencoded) of the contact OR its SMS attribute value
  # @param [Hash] opts the optional parameters
  # @return [GetExtendedContactDetails]
  describe 'get_contact_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contact_stats
  # Get email campaigns&#39; statistics for a contact
  # @param email Email address (urlencoded) of the contact
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate
  # @option opts [Date] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate
  # @return [GetContactCampaignStats]
  describe 'get_contact_stats test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contacts
  # Get all the contacts
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [DateTime] :modified_since Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  # @return [GetContacts]
  describe 'get_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contacts_from_list
  # Get contacts in a list
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :modified_since Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @return [GetContacts]
  describe 'get_contacts_from_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder
  # Returns a folder&#39;s details
  # @param folder_id id of the folder
  # @param [Hash] opts the optional parameters
  # @return [GetFolder]
  describe 'get_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder_lists
  # Get lists in a folder
  # @param folder_id Id of the folder
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @return [GetFolderLists]
  describe 'get_folder_lists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folders
  # Get all folders
  # @param limit Number of documents per page
  # @param offset Index of the first document of the page
  # @param [Hash] opts the optional parameters
  # @return [GetFolders]
  describe 'get_folders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_list
  # Get a list&#39;s details
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @return [GetExtendedList]
  describe 'get_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lists
  # Get all the lists
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @return [GetLists]
  describe 'get_lists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for import_contacts
  # Import contacts
  # It returns the background process ID which on completion calls the notify URL that you have set in the input.
  # @param request_contact_import Values to import contacts in Sendinblue. To know more about the expected format, please have a look at &#x60;&#x60;https://help.sendinblue.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns&#x60;&#x60;
  # @param [Hash] opts the optional parameters
  # @return [CreatedProcessId]
  describe 'import_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_contact_from_list
  # Delete a contact from a list
  # @param list_id Id of the list
  # @param contact_emails Emails adresses of the contact
  # @param [Hash] opts the optional parameters
  # @return [PostContactInfo]
  describe 'remove_contact_from_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for request_contact_export
  # Export contacts
  # It returns the background process ID which on completion calls the notify URL that you have set in the input. File will be available in csv.
  # @param request_contact_export Values to request a contact export
  # @param [Hash] opts the optional parameters
  # @return [CreatedProcessId]
  describe 'request_contact_export test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_attribute
  # Update contact attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the existing attribute
  # @param update_attribute Values to update an attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contact
  # Update a contact
  # @param email Email (urlencoded) of the contact
  # @param update_contact Values to update a contact
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_folder
  # Update a folder
  # @param folder_id Id of the folder
  # @param update_folder Name of the folder
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_list
  # Update a list
  # @param list_id Id of the list
  # @param update_list Values to update a list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
