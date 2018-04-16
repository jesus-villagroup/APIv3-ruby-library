# SendinBlue's API v3 Ruby Library

SendinBlue's API exposes the entire SendinBlue features via a standardized programmatic interface. Please refer to the full [documentation](https://developers.sendinblue.com) to learn more.

This is the wrapper for the API. It implements all the features of the API v3.

SendinBlue's API matches the [OpenAPI v2 definition](https://www.openapis.org/). The specification can be downloaded [here](https://api.sendinblue.com/v3/swagger_definition.yml).

This RUBY package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project and is reviewed and maintained by SendinBlue:

- API version: 3.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

For more information, please visit [https://account.sendinblue.com/support](https://account.sendinblue.com/support)

## Installation

### Build a gem

Add this line to your application's Gemfile:
```shell
gem 'sib-api-v3-sdk'
```

And then execute:
```shell
$ bundle
```

Or install it yourself as:
```shell
$ ( sudo ) gem install sib-api-v3-sdk
```

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'sib-api-v3-sdk', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'sib-api-v3-sdk'

# Setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::AccountApi.new

begin
  #Get your account informations, plans and credits details
  result = api_instance.get_account
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling AccountApi->get_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sendinblue.com/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SibApiV3Sdk::AccountApi* | [**get_account**](docs/AccountApi.md#get_account) | **GET** /account | Get your account informations, plans and credits details
*SibApiV3Sdk::AttributesApi* | [**create_attribute**](docs/AttributesApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Creates contact attribute
*SibApiV3Sdk::AttributesApi* | [**delete_attribute**](docs/AttributesApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Deletes an attribute
*SibApiV3Sdk::AttributesApi* | [**get_attributes**](docs/AttributesApi.md#get_attributes) | **GET** /contacts/attributes | Lists all attributes
*SibApiV3Sdk::AttributesApi* | [**update_attribute**](docs/AttributesApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Updates contact attribute
*SibApiV3Sdk::ContactsApi* | [**add_contact_to_list**](docs/ContactsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
*SibApiV3Sdk::ContactsApi* | [**create_attribute**](docs/ContactsApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Creates contact attribute
*SibApiV3Sdk::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contacts | Create a contact
*SibApiV3Sdk::ContactsApi* | [**create_folder**](docs/ContactsApi.md#create_folder) | **POST** /contacts/folders | Create a folder
*SibApiV3Sdk::ContactsApi* | [**create_list**](docs/ContactsApi.md#create_list) | **POST** /contacts/lists | Create a list
*SibApiV3Sdk::ContactsApi* | [**delete_attribute**](docs/ContactsApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Deletes an attribute
*SibApiV3Sdk::ContactsApi* | [**delete_contact**](docs/ContactsApi.md#delete_contact) | **DELETE** /contacts/{email} | Deletes a contact
*SibApiV3Sdk::ContactsApi* | [**delete_folder**](docs/ContactsApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
*SibApiV3Sdk::ContactsApi* | [**delete_list**](docs/ContactsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
*SibApiV3Sdk::ContactsApi* | [**get_attributes**](docs/ContactsApi.md#get_attributes) | **GET** /contacts/attributes | Lists all attributes
*SibApiV3Sdk::ContactsApi* | [**get_contact_info**](docs/ContactsApi.md#get_contact_info) | **GET** /contacts/{email} | Retrieves contact informations
*SibApiV3Sdk::ContactsApi* | [**get_contact_stats**](docs/ContactsApi.md#get_contact_stats) | **GET** /contacts/{email}/campaignStats | Get the campaigns statistics for a contact
*SibApiV3Sdk::ContactsApi* | [**get_contacts**](docs/ContactsApi.md#get_contacts) | **GET** /contacts | Get all the contacts
*SibApiV3Sdk::ContactsApi* | [**get_contacts_from_list**](docs/ContactsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get the contacts in a list
*SibApiV3Sdk::ContactsApi* | [**get_folder**](docs/ContactsApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns folder details
*SibApiV3Sdk::ContactsApi* | [**get_folder_lists**](docs/ContactsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
*SibApiV3Sdk::ContactsApi* | [**get_folders**](docs/ContactsApi.md#get_folders) | **GET** /contacts/folders | Get all the folders
*SibApiV3Sdk::ContactsApi* | [**get_list**](docs/ContactsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get the details of a list
*SibApiV3Sdk::ContactsApi* | [**get_lists**](docs/ContactsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
*SibApiV3Sdk::ContactsApi* | [**import_contacts**](docs/ContactsApi.md#import_contacts) | **POST** /contacts/import | Import contacts
*SibApiV3Sdk::ContactsApi* | [**remove_contact_from_list**](docs/ContactsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Remove existing contacts from a list
*SibApiV3Sdk::ContactsApi* | [**request_contact_export**](docs/ContactsApi.md#request_contact_export) | **POST** /contacts/export | Export contacts
*SibApiV3Sdk::ContactsApi* | [**update_attribute**](docs/ContactsApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Updates contact attribute
*SibApiV3Sdk::ContactsApi* | [**update_contact**](docs/ContactsApi.md#update_contact) | **PUT** /contacts/{email} | Updates a contact
*SibApiV3Sdk::ContactsApi* | [**update_folder**](docs/ContactsApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a contact folder
*SibApiV3Sdk::ContactsApi* | [**update_list**](docs/ContactsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list
*SibApiV3Sdk::EmailCampaignsApi* | [**create_email_campaign**](docs/EmailCampaignsApi.md#create_email_campaign) | **POST** /emailCampaigns | Create an email campaign
*SibApiV3Sdk::EmailCampaignsApi* | [**delete_email_campaign**](docs/EmailCampaignsApi.md#delete_email_campaign) | **DELETE** /emailCampaigns/{campaignId} | Delete an email campaign
*SibApiV3Sdk::EmailCampaignsApi* | [**email_export_recipients**](docs/EmailCampaignsApi.md#email_export_recipients) | **POST** /emailCampaigns/{campaignId}/exportRecipients | Export the recipients of a campaign
*SibApiV3Sdk::EmailCampaignsApi* | [**get_email_campaign**](docs/EmailCampaignsApi.md#get_email_campaign) | **GET** /emailCampaigns/{campaignId} | Get campaign informations
*SibApiV3Sdk::EmailCampaignsApi* | [**get_email_campaigns**](docs/EmailCampaignsApi.md#get_email_campaigns) | **GET** /emailCampaigns | Return all your created campaigns
*SibApiV3Sdk::EmailCampaignsApi* | [**send_email_campaign_now**](docs/EmailCampaignsApi.md#send_email_campaign_now) | **POST** /emailCampaigns/{campaignId}/sendNow | Send an email campaign id of the campaign immediately
*SibApiV3Sdk::EmailCampaignsApi* | [**send_report**](docs/EmailCampaignsApi.md#send_report) | **POST** /emailCampaigns/{campaignId}/sendReport | Send the report of a campaigns
*SibApiV3Sdk::EmailCampaignsApi* | [**send_test_email**](docs/EmailCampaignsApi.md#send_test_email) | **POST** /emailCampaigns/{campaignId}/sendTest | Send an email campaign to your test list
*SibApiV3Sdk::EmailCampaignsApi* | [**update_campaign_status**](docs/EmailCampaignsApi.md#update_campaign_status) | **PUT** /emailCampaigns/{campaignId}/status | Update a campaign status
*SibApiV3Sdk::EmailCampaignsApi* | [**update_email_campaign**](docs/EmailCampaignsApi.md#update_email_campaign) | **PUT** /emailCampaigns/{campaignId} | Update a campaign
*SibApiV3Sdk::FoldersApi* | [**create_folder**](docs/FoldersApi.md#create_folder) | **POST** /contacts/folders | Create a folder
*SibApiV3Sdk::FoldersApi* | [**delete_folder**](docs/FoldersApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
*SibApiV3Sdk::FoldersApi* | [**get_folder**](docs/FoldersApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns folder details
*SibApiV3Sdk::FoldersApi* | [**get_folder_lists**](docs/FoldersApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
*SibApiV3Sdk::FoldersApi* | [**get_folders**](docs/FoldersApi.md#get_folders) | **GET** /contacts/folders | Get all the folders
*SibApiV3Sdk::FoldersApi* | [**update_folder**](docs/FoldersApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a contact folder
*SibApiV3Sdk::ListsApi* | [**add_contact_to_list**](docs/ListsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
*SibApiV3Sdk::ListsApi* | [**create_list**](docs/ListsApi.md#create_list) | **POST** /contacts/lists | Create a list
*SibApiV3Sdk::ListsApi* | [**delete_list**](docs/ListsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
*SibApiV3Sdk::ListsApi* | [**get_contacts_from_list**](docs/ListsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get the contacts in a list
*SibApiV3Sdk::ListsApi* | [**get_folder_lists**](docs/ListsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
*SibApiV3Sdk::ListsApi* | [**get_list**](docs/ListsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get the details of a list
*SibApiV3Sdk::ListsApi* | [**get_lists**](docs/ListsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
*SibApiV3Sdk::ListsApi* | [**remove_contact_from_list**](docs/ListsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Remove existing contacts from a list
*SibApiV3Sdk::ListsApi* | [**update_list**](docs/ListsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list
*SibApiV3Sdk::ProcessApi* | [**get_process**](docs/ProcessApi.md#get_process) | **GET** /processes/{processId} | Return the informations for a process
*SibApiV3Sdk::ProcessApi* | [**get_processes**](docs/ProcessApi.md#get_processes) | **GET** /processes | Return all the processes for your account
*SibApiV3Sdk::ResellerApi* | [**add_credits**](docs/ResellerApi.md#add_credits) | **POST** /reseller/children/{childAuthKey}/credits/add | Add Email and/or SMS credits to a specific child account
*SibApiV3Sdk::ResellerApi* | [**associate_ip_to_child**](docs/ResellerApi.md#associate_ip_to_child) | **POST** /reseller/children/{childAuthKey}/ips/associate | Associate a dedicated IP to the child
*SibApiV3Sdk::ResellerApi* | [**create_reseller_child**](docs/ResellerApi.md#create_reseller_child) | **POST** /reseller/children | Creates a reseller child
*SibApiV3Sdk::ResellerApi* | [**delete_reseller_child**](docs/ResellerApi.md#delete_reseller_child) | **DELETE** /reseller/children/{childAuthKey} | Deletes a single reseller child based on the childAuthKey supplied
*SibApiV3Sdk::ResellerApi* | [**dissociate_ip_from_child**](docs/ResellerApi.md#dissociate_ip_from_child) | **POST** /reseller/children/{childAuthKey}/ips/dissociate | Dissociate a dedicated IP to the child
*SibApiV3Sdk::ResellerApi* | [**get_child_info**](docs/ResellerApi.md#get_child_info) | **GET** /reseller/children/{childAuthKey} | Gets the info about a specific child account
*SibApiV3Sdk::ResellerApi* | [**get_reseller_childs**](docs/ResellerApi.md#get_reseller_childs) | **GET** /reseller/children | Gets the list of all reseller's children accounts
*SibApiV3Sdk::ResellerApi* | [**remove_credits**](docs/ResellerApi.md#remove_credits) | **POST** /reseller/children/{childAuthKey}/credits/remove | Remove Email and/or SMS credits from a specific child account
*SibApiV3Sdk::ResellerApi* | [**update_reseller_child**](docs/ResellerApi.md#update_reseller_child) | **PUT** /reseller/children/{childAuthKey} | Updates infos of reseller's child based on the childAuthKey supplied
*SibApiV3Sdk::SMSCampaignsApi* | [**create_sms_campaign**](docs/SMSCampaignsApi.md#create_sms_campaign) | **POST** /smsCampaigns | Creates an SMS campaign
*SibApiV3Sdk::SMSCampaignsApi* | [**delete_sms_campaign**](docs/SMSCampaignsApi.md#delete_sms_campaign) | **DELETE** /smsCampaigns/{campaignId} | Delete the SMS campaign
*SibApiV3Sdk::SMSCampaignsApi* | [**get_sms_campaign**](docs/SMSCampaignsApi.md#get_sms_campaign) | **GET** /smsCampaigns/{campaignId} | Get an SMS campaign
*SibApiV3Sdk::SMSCampaignsApi* | [**get_sms_campaigns**](docs/SMSCampaignsApi.md#get_sms_campaigns) | **GET** /smsCampaigns | Returns the informations for all your created SMS campaigns
*SibApiV3Sdk::SMSCampaignsApi* | [**request_sms_recipient_export**](docs/SMSCampaignsApi.md#request_sms_recipient_export) | **POST** /smsCampaigns/{campaignId}/exportRecipients | Exports the recipients of the specified campaign.
*SibApiV3Sdk::SMSCampaignsApi* | [**send_sms_campaign_now**](docs/SMSCampaignsApi.md#send_sms_campaign_now) | **POST** /smsCampaigns/{campaignId}/sendNow | Send your SMS campaign immediately
*SibApiV3Sdk::SMSCampaignsApi* | [**send_sms_report**](docs/SMSCampaignsApi.md#send_sms_report) | **POST** /smsCampaigns/{campaignId}/sendReport | Send report of SMS campaigns
*SibApiV3Sdk::SMSCampaignsApi* | [**send_test_sms**](docs/SMSCampaignsApi.md#send_test_sms) | **POST** /smsCampaigns/{campaignId}/sendTest | Send an SMS
*SibApiV3Sdk::SMSCampaignsApi* | [**update_sms_campaign**](docs/SMSCampaignsApi.md#update_sms_campaign) | **PUT** /smsCampaigns/{campaignId} | Updates an SMS campaign
*SibApiV3Sdk::SMSCampaignsApi* | [**update_sms_campaign_status**](docs/SMSCampaignsApi.md#update_sms_campaign_status) | **PUT** /smsCampaigns/{campaignId}/status | Update the campaign status
*SibApiV3Sdk::SMTPApi* | [**create_smtp_template**](docs/SMTPApi.md#create_smtp_template) | **POST** /smtp/templates | Create an smtp template
*SibApiV3Sdk::SMTPApi* | [**delete_hardbounces**](docs/SMTPApi.md#delete_hardbounces) | **POST** /smtp/deleteHardbounces | Delete hardbounces
*SibApiV3Sdk::SMTPApi* | [**delete_smtp_template**](docs/SMTPApi.md#delete_smtp_template) | **DELETE** /smtp/templates/{templateId} | Delete an inactive smtp template
*SibApiV3Sdk::SMTPApi* | [**get_aggregated_smtp_report**](docs/SMTPApi.md#get_aggregated_smtp_report) | **GET** /smtp/statistics/aggregatedReport | Get your SMTP activity aggregated over a period of time
*SibApiV3Sdk::SMTPApi* | [**get_email_event_report**](docs/SMTPApi.md#get_email_event_report) | **GET** /smtp/statistics/events | Get all your SMTP activity (unaggregated events)
*SibApiV3Sdk::SMTPApi* | [**get_smtp_report**](docs/SMTPApi.md#get_smtp_report) | **GET** /smtp/statistics/reports | Get your SMTP activity aggregated per day
*SibApiV3Sdk::SMTPApi* | [**get_smtp_template**](docs/SMTPApi.md#get_smtp_template) | **GET** /smtp/templates/{templateId} | Returns the template informations
*SibApiV3Sdk::SMTPApi* | [**get_smtp_templates**](docs/SMTPApi.md#get_smtp_templates) | **GET** /smtp/templates | Get the list of SMTP templates
*SibApiV3Sdk::SMTPApi* | [**send_template**](docs/SMTPApi.md#send_template) | **POST** /smtp/templates/{templateId}/send | Send a template
*SibApiV3Sdk::SMTPApi* | [**send_test_template**](docs/SMTPApi.md#send_test_template) | **POST** /smtp/templates/{templateId}/sendTest | Send a template to your test list
*SibApiV3Sdk::SMTPApi* | [**send_transac_email**](docs/SMTPApi.md#send_transac_email) | **POST** /smtp/email | Send a transactional email
*SibApiV3Sdk::SMTPApi* | [**update_smtp_template**](docs/SMTPApi.md#update_smtp_template) | **PUT** /smtp/templates/{templateId} | Updates an smtp templates
*SibApiV3Sdk::SendersApi* | [**create_sender**](docs/SendersApi.md#create_sender) | **POST** /senders | Create a new sender
*SibApiV3Sdk::SendersApi* | [**delete_sender**](docs/SendersApi.md#delete_sender) | **DELETE** /senders/{senderId} | Delete a sender
*SibApiV3Sdk::SendersApi* | [**get_ips**](docs/SendersApi.md#get_ips) | **GET** /senders/ips | Return all the dedicated IPs for your account
*SibApiV3Sdk::SendersApi* | [**get_ips_from_sender**](docs/SendersApi.md#get_ips_from_sender) | **GET** /senders/{senderId}/ips | Return all the dedicated IPs for a sender
*SibApiV3Sdk::SendersApi* | [**get_senders**](docs/SendersApi.md#get_senders) | **GET** /senders | Get the list of all your senders
*SibApiV3Sdk::SendersApi* | [**update_sender**](docs/SendersApi.md#update_sender) | **PUT** /senders/{senderId} | Update a sender
*SibApiV3Sdk::TransactionalSMSApi* | [**get_sms_events**](docs/TransactionalSMSApi.md#get_sms_events) | **GET** /transactionalSMS/statistics/events | Get all the SMS activity (unaggregated events)
*SibApiV3Sdk::TransactionalSMSApi* | [**get_transac_aggregated_sms_report**](docs/TransactionalSMSApi.md#get_transac_aggregated_sms_report) | **GET** /transactionalSMS/statistics/aggregatedReport | Get your SMS activity aggregated over a period of time
*SibApiV3Sdk::TransactionalSMSApi* | [**get_transac_sms_report**](docs/TransactionalSMSApi.md#get_transac_sms_report) | **GET** /transactionalSMS/statistics/reports | Get your SMS activity aggregated per day
*SibApiV3Sdk::TransactionalSMSApi* | [**send_transac_sms**](docs/TransactionalSMSApi.md#send_transac_sms) | **POST** /transactionalSMS/sms | Send the SMS campaign to the specified mobile number
*SibApiV3Sdk::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a webhook
*SibApiV3Sdk::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhookId} | Delete a webhook
*SibApiV3Sdk::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook details
*SibApiV3Sdk::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get all webhooks
*SibApiV3Sdk::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PUT** /webhooks/{webhookId} | Update a webhook


## Documentation for Models

 - [SibApiV3Sdk::AddContactToList](docs/AddContactToList.md)
 - [SibApiV3Sdk::AddCredits](docs/AddCredits.md)
 - [SibApiV3Sdk::CreateAttribute](docs/CreateAttribute.md)
 - [SibApiV3Sdk::CreateAttributeEnumeration](docs/CreateAttributeEnumeration.md)
 - [SibApiV3Sdk::CreateChild](docs/CreateChild.md)
 - [SibApiV3Sdk::CreateContact](docs/CreateContact.md)
 - [SibApiV3Sdk::CreateEmailCampaign](docs/CreateEmailCampaign.md)
 - [SibApiV3Sdk::CreateEmailCampaignRecipients](docs/CreateEmailCampaignRecipients.md)
 - [SibApiV3Sdk::CreateEmailCampaignSender](docs/CreateEmailCampaignSender.md)
 - [SibApiV3Sdk::CreateList](docs/CreateList.md)
 - [SibApiV3Sdk::CreateModel](docs/CreateModel.md)
 - [SibApiV3Sdk::CreateReseller](docs/CreateReseller.md)
 - [SibApiV3Sdk::CreateSender](docs/CreateSender.md)
 - [SibApiV3Sdk::CreateSenderIps](docs/CreateSenderIps.md)
 - [SibApiV3Sdk::CreateSenderModel](docs/CreateSenderModel.md)
 - [SibApiV3Sdk::CreateSmsCampaign](docs/CreateSmsCampaign.md)
 - [SibApiV3Sdk::CreateSmsCampaignRecipients](docs/CreateSmsCampaignRecipients.md)
 - [SibApiV3Sdk::CreateSmtpEmail](docs/CreateSmtpEmail.md)
 - [SibApiV3Sdk::CreateSmtpTemplate](docs/CreateSmtpTemplate.md)
 - [SibApiV3Sdk::CreateSmtpTemplateSender](docs/CreateSmtpTemplateSender.md)
 - [SibApiV3Sdk::CreateUpdateFolder](docs/CreateUpdateFolder.md)
 - [SibApiV3Sdk::CreateWebhook](docs/CreateWebhook.md)
 - [SibApiV3Sdk::CreatedProcessId](docs/CreatedProcessId.md)
 - [SibApiV3Sdk::DeleteHardbounces](docs/DeleteHardbounces.md)
 - [SibApiV3Sdk::EmailExportRecipients](docs/EmailExportRecipients.md)
 - [SibApiV3Sdk::ErrorModel](docs/ErrorModel.md)
 - [SibApiV3Sdk::GetAccountMarketingAutomation](docs/GetAccountMarketingAutomation.md)
 - [SibApiV3Sdk::GetAccountPlan](docs/GetAccountPlan.md)
 - [SibApiV3Sdk::GetAccountRelay](docs/GetAccountRelay.md)
 - [SibApiV3Sdk::GetAccountRelayData](docs/GetAccountRelayData.md)
 - [SibApiV3Sdk::GetAggregatedReport](docs/GetAggregatedReport.md)
 - [SibApiV3Sdk::GetAttributes](docs/GetAttributes.md)
 - [SibApiV3Sdk::GetAttributesAttributes](docs/GetAttributesAttributes.md)
 - [SibApiV3Sdk::GetAttributesEnumeration](docs/GetAttributesEnumeration.md)
 - [SibApiV3Sdk::GetCampaignOverview](docs/GetCampaignOverview.md)
 - [SibApiV3Sdk::GetCampaignRecipients](docs/GetCampaignRecipients.md)
 - [SibApiV3Sdk::GetCampaignStats](docs/GetCampaignStats.md)
 - [SibApiV3Sdk::GetChildInfoApiKeys](docs/GetChildInfoApiKeys.md)
 - [SibApiV3Sdk::GetChildInfoApiKeysV2](docs/GetChildInfoApiKeysV2.md)
 - [SibApiV3Sdk::GetChildInfoApiKeysV3](docs/GetChildInfoApiKeysV3.md)
 - [SibApiV3Sdk::GetChildInfoCredits](docs/GetChildInfoCredits.md)
 - [SibApiV3Sdk::GetChildInfoStatistics](docs/GetChildInfoStatistics.md)
 - [SibApiV3Sdk::GetChildrenList](docs/GetChildrenList.md)
 - [SibApiV3Sdk::GetClient](docs/GetClient.md)
 - [SibApiV3Sdk::GetContactCampaignStats](docs/GetContactCampaignStats.md)
 - [SibApiV3Sdk::GetContactCampaignStatsClicked](docs/GetContactCampaignStatsClicked.md)
 - [SibApiV3Sdk::GetContactCampaignStatsOpened](docs/GetContactCampaignStatsOpened.md)
 - [SibApiV3Sdk::GetContactCampaignStatsTransacAttributes](docs/GetContactCampaignStatsTransacAttributes.md)
 - [SibApiV3Sdk::GetContactCampaignStatsUnsubscriptions](docs/GetContactCampaignStatsUnsubscriptions.md)
 - [SibApiV3Sdk::GetContactDetails](docs/GetContactDetails.md)
 - [SibApiV3Sdk::GetContacts](docs/GetContacts.md)
 - [SibApiV3Sdk::GetEmailCampaigns](docs/GetEmailCampaigns.md)
 - [SibApiV3Sdk::GetEmailEventReport](docs/GetEmailEventReport.md)
 - [SibApiV3Sdk::GetEmailEventReportEvents](docs/GetEmailEventReportEvents.md)
 - [SibApiV3Sdk::GetExtendedCampaignOverviewSender](docs/GetExtendedCampaignOverviewSender.md)
 - [SibApiV3Sdk::GetExtendedCampaignStats](docs/GetExtendedCampaignStats.md)
 - [SibApiV3Sdk::GetExtendedCampaignStatsLinksStats](docs/GetExtendedCampaignStatsLinksStats.md)
 - [SibApiV3Sdk::GetExtendedClientAddress](docs/GetExtendedClientAddress.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatistics](docs/GetExtendedContactDetailsStatistics.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsClicked](docs/GetExtendedContactDetailsStatisticsClicked.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsLinks](docs/GetExtendedContactDetailsStatisticsLinks.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsMessagesSent](docs/GetExtendedContactDetailsStatisticsMessagesSent.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsOpened](docs/GetExtendedContactDetailsStatisticsOpened.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsUnsubscriptions](docs/GetExtendedContactDetailsStatisticsUnsubscriptions.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsUnsubscriptionsAdminUnsubscription](docs/GetExtendedContactDetailsStatisticsUnsubscriptionsAdminUnsubscription.md)
 - [SibApiV3Sdk::GetExtendedContactDetailsStatisticsUnsubscriptionsUserUnsubscription](docs/GetExtendedContactDetailsStatisticsUnsubscriptionsUserUnsubscription.md)
 - [SibApiV3Sdk::GetExtendedListCampaignStats](docs/GetExtendedListCampaignStats.md)
 - [SibApiV3Sdk::GetFolder](docs/GetFolder.md)
 - [SibApiV3Sdk::GetFolderLists](docs/GetFolderLists.md)
 - [SibApiV3Sdk::GetFolders](docs/GetFolders.md)
 - [SibApiV3Sdk::GetIp](docs/GetIp.md)
 - [SibApiV3Sdk::GetIpFromSender](docs/GetIpFromSender.md)
 - [SibApiV3Sdk::GetIps](docs/GetIps.md)
 - [SibApiV3Sdk::GetIpsFromSender](docs/GetIpsFromSender.md)
 - [SibApiV3Sdk::GetList](docs/GetList.md)
 - [SibApiV3Sdk::GetLists](docs/GetLists.md)
 - [SibApiV3Sdk::GetProcess](docs/GetProcess.md)
 - [SibApiV3Sdk::GetProcesses](docs/GetProcesses.md)
 - [SibApiV3Sdk::GetReports](docs/GetReports.md)
 - [SibApiV3Sdk::GetReportsReports](docs/GetReportsReports.md)
 - [SibApiV3Sdk::GetSendersList](docs/GetSendersList.md)
 - [SibApiV3Sdk::GetSendersListIps](docs/GetSendersListIps.md)
 - [SibApiV3Sdk::GetSendersListSenders](docs/GetSendersListSenders.md)
 - [SibApiV3Sdk::GetSmsCampaignOverview](docs/GetSmsCampaignOverview.md)
 - [SibApiV3Sdk::GetSmsCampaignStats](docs/GetSmsCampaignStats.md)
 - [SibApiV3Sdk::GetSmsCampaigns](docs/GetSmsCampaigns.md)
 - [SibApiV3Sdk::GetSmsEventReport](docs/GetSmsEventReport.md)
 - [SibApiV3Sdk::GetSmsEventReportEvents](docs/GetSmsEventReportEvents.md)
 - [SibApiV3Sdk::GetSmtpTemplateOverview](docs/GetSmtpTemplateOverview.md)
 - [SibApiV3Sdk::GetSmtpTemplateOverviewSender](docs/GetSmtpTemplateOverviewSender.md)
 - [SibApiV3Sdk::GetSmtpTemplates](docs/GetSmtpTemplates.md)
 - [SibApiV3Sdk::GetStatsByDomain](docs/GetStatsByDomain.md)
 - [SibApiV3Sdk::GetTransacAggregatedSmsReport](docs/GetTransacAggregatedSmsReport.md)
 - [SibApiV3Sdk::GetTransacSmsReport](docs/GetTransacSmsReport.md)
 - [SibApiV3Sdk::GetTransacSmsReportReports](docs/GetTransacSmsReportReports.md)
 - [SibApiV3Sdk::GetWebhook](docs/GetWebhook.md)
 - [SibApiV3Sdk::GetWebhooks](docs/GetWebhooks.md)
 - [SibApiV3Sdk::ManageIp](docs/ManageIp.md)
 - [SibApiV3Sdk::PostContactInfo](docs/PostContactInfo.md)
 - [SibApiV3Sdk::PostContactInfoContacts](docs/PostContactInfoContacts.md)
 - [SibApiV3Sdk::PostSendFailed](docs/PostSendFailed.md)
 - [SibApiV3Sdk::PostSendSmsTestFailed](docs/PostSendSmsTestFailed.md)
 - [SibApiV3Sdk::RemainingCreditModel](docs/RemainingCreditModel.md)
 - [SibApiV3Sdk::RemainingCreditModelChild](docs/RemainingCreditModelChild.md)
 - [SibApiV3Sdk::RemainingCreditModelReseller](docs/RemainingCreditModelReseller.md)
 - [SibApiV3Sdk::RemoveContactFromList](docs/RemoveContactFromList.md)
 - [SibApiV3Sdk::RemoveCredits](docs/RemoveCredits.md)
 - [SibApiV3Sdk::RequestContactExport](docs/RequestContactExport.md)
 - [SibApiV3Sdk::RequestContactImport](docs/RequestContactImport.md)
 - [SibApiV3Sdk::RequestContactImportNewList](docs/RequestContactImportNewList.md)
 - [SibApiV3Sdk::RequestSmsRecipientExport](docs/RequestSmsRecipientExport.md)
 - [SibApiV3Sdk::SendEmail](docs/SendEmail.md)
 - [SibApiV3Sdk::SendEmailAttachment](docs/SendEmailAttachment.md)
 - [SibApiV3Sdk::SendReport](docs/SendReport.md)
 - [SibApiV3Sdk::SendReportEmail](docs/SendReportEmail.md)
 - [SibApiV3Sdk::SendSms](docs/SendSms.md)
 - [SibApiV3Sdk::SendSmtpEmail](docs/SendSmtpEmail.md)
 - [SibApiV3Sdk::SendSmtpEmailAttachment](docs/SendSmtpEmailAttachment.md)
 - [SibApiV3Sdk::SendSmtpEmailBcc](docs/SendSmtpEmailBcc.md)
 - [SibApiV3Sdk::SendSmtpEmailCc](docs/SendSmtpEmailCc.md)
 - [SibApiV3Sdk::SendSmtpEmailReplyTo](docs/SendSmtpEmailReplyTo.md)
 - [SibApiV3Sdk::SendSmtpEmailSender](docs/SendSmtpEmailSender.md)
 - [SibApiV3Sdk::SendSmtpEmailTo](docs/SendSmtpEmailTo.md)
 - [SibApiV3Sdk::SendTemplateEmail](docs/SendTemplateEmail.md)
 - [SibApiV3Sdk::SendTestEmail](docs/SendTestEmail.md)
 - [SibApiV3Sdk::SendTestSms](docs/SendTestSms.md)
 - [SibApiV3Sdk::SendTransacSms](docs/SendTransacSms.md)
 - [SibApiV3Sdk::UpdateAttribute](docs/UpdateAttribute.md)
 - [SibApiV3Sdk::UpdateAttributeEnumeration](docs/UpdateAttributeEnumeration.md)
 - [SibApiV3Sdk::UpdateCampaignStatus](docs/UpdateCampaignStatus.md)
 - [SibApiV3Sdk::UpdateChild](docs/UpdateChild.md)
 - [SibApiV3Sdk::UpdateContact](docs/UpdateContact.md)
 - [SibApiV3Sdk::UpdateEmailCampaign](docs/UpdateEmailCampaign.md)
 - [SibApiV3Sdk::UpdateEmailCampaignRecipients](docs/UpdateEmailCampaignRecipients.md)
 - [SibApiV3Sdk::UpdateEmailCampaignSender](docs/UpdateEmailCampaignSender.md)
 - [SibApiV3Sdk::UpdateList](docs/UpdateList.md)
 - [SibApiV3Sdk::UpdateSender](docs/UpdateSender.md)
 - [SibApiV3Sdk::UpdateSmsCampaign](docs/UpdateSmsCampaign.md)
 - [SibApiV3Sdk::UpdateSmtpTemplate](docs/UpdateSmtpTemplate.md)
 - [SibApiV3Sdk::UpdateSmtpTemplateSender](docs/UpdateSmtpTemplateSender.md)
 - [SibApiV3Sdk::UpdateWebhook](docs/UpdateWebhook.md)
 - [SibApiV3Sdk::GetChildInfo](docs/GetChildInfo.md)
 - [SibApiV3Sdk::GetExtendedCampaignOverview](docs/GetExtendedCampaignOverview.md)
 - [SibApiV3Sdk::GetExtendedClient](docs/GetExtendedClient.md)
 - [SibApiV3Sdk::GetExtendedContactDetails](docs/GetExtendedContactDetails.md)
 - [SibApiV3Sdk::GetExtendedList](docs/GetExtendedList.md)
 - [SibApiV3Sdk::GetSmsCampaign](docs/GetSmsCampaign.md)
 - [SibApiV3Sdk::GetAccount](docs/GetAccount.md)
 - [SibApiV3Sdk::GetEmailCampaign](docs/GetEmailCampaign.md)


## Documentation for Authorization


### api-key

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header


## Support and Feedback

Be sure to visit the SendinBlue official [documentation website](https://sendinblue.readme.io/docs ) for additional information about our API.

If you find a bug, please post the issue on [Github](https://github.com/sendinblue/APIv3-ruby-library/issues).

As always, if you need additional assistance, drop us a note [here](https://account.sendinblue.com/support).

## Recommendation

Please follow camelCase convention for variables in the API's. For example, use customVariable instead of custom_variable.

