=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module SibApiV3Sdk
  class RequestContactImport
    # Mandatory if fileBody or jsonBody is not defined. URL of the file to be imported (no local file). Possible file formats: .txt, .csv, .json
    attr_accessor :file_url

    # Mandatory if fileUrl and jsonBody is not defined. CSV content to be imported. Use semicolon to separate multiple attributes. Maximum allowed file body size is 10MB . However we recommend a safe limit of around 8 MB to avoid the issues caused due to increase of file body size while parsing. Please use fileUrl instead to import bigger files.
    attr_accessor :file_body

    # **Mandatory if fileUrl and fileBody is not defined.** JSON content to be imported. **Maximum allowed json body size is 10MB** . However we recommend a safe limit of around 8 MB to avoid the issues caused due to increase of json body size while parsing. Please use fileUrl instead to import bigger files. 
    attr_accessor :json_body

    # Mandatory if newList is not defined. Ids of the lists in which the contacts shall be imported. For example, [2, 4, 7].
    attr_accessor :list_ids

    # URL that will be called once the import process is finished. For reference, https://help.brevo.com/hc/en-us/articles/360007666479
    attr_accessor :notify_url

    attr_accessor :new_list

    # To blacklist all the contacts for email
    attr_accessor :email_blacklist

    # To blacklist all the contacts for sms
    attr_accessor :sms_blacklist

    # To facilitate the choice to update the existing contacts
    attr_accessor :update_existing_contacts

    # To facilitate the choice to erase any attribute of the existing contacts with empty value. emptyContactsAttributes = true means the empty fields in your import will erase any attribute that currently contain data in Brevo, & emptyContactsAttributes = false means the empty fields will not affect your existing data ( only available if `updateExistingContacts` set to true )
    attr_accessor :empty_contacts_attributes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_url' => :'fileUrl',
        :'file_body' => :'fileBody',
        :'json_body' => :'jsonBody',
        :'list_ids' => :'listIds',
        :'notify_url' => :'notifyUrl',
        :'new_list' => :'newList',
        :'email_blacklist' => :'emailBlacklist',
        :'sms_blacklist' => :'smsBlacklist',
        :'update_existing_contacts' => :'updateExistingContacts',
        :'empty_contacts_attributes' => :'emptyContactsAttributes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_url' => :'String',
        :'file_body' => :'String',
        :'json_body' => :'Array<Hash<String, Object>>',
        :'list_ids' => :'Array<Integer>',
        :'notify_url' => :'String',
        :'new_list' => :'RequestContactImportNewList',
        :'email_blacklist' => :'BOOLEAN',
        :'sms_blacklist' => :'BOOLEAN',
        :'update_existing_contacts' => :'BOOLEAN',
        :'empty_contacts_attributes' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'fileUrl')
        self.file_url = attributes[:'fileUrl']
      end

      if attributes.has_key?(:'fileBody')
        self.file_body = attributes[:'fileBody']
      end

      if attributes.has_key?(:'jsonBody')
        if (value = attributes[:'jsonBody']).is_a?(Array)
          self.json_body = value
        end
      end

      if attributes.has_key?(:'listIds')
        if (value = attributes[:'listIds']).is_a?(Array)
          self.list_ids = value
        end
      end

      if attributes.has_key?(:'notifyUrl')
        self.notify_url = attributes[:'notifyUrl']
      end

      if attributes.has_key?(:'newList')
        self.new_list = attributes[:'newList']
      end

      if attributes.has_key?(:'emailBlacklist')
        self.email_blacklist = attributes[:'emailBlacklist']
      else
        self.email_blacklist = false
      end

      if attributes.has_key?(:'smsBlacklist')
        self.sms_blacklist = attributes[:'smsBlacklist']
      else
        self.sms_blacklist = false
      end

      if attributes.has_key?(:'updateExistingContacts')
        self.update_existing_contacts = attributes[:'updateExistingContacts']
      else
        self.update_existing_contacts = true
      end

      if attributes.has_key?(:'emptyContactsAttributes')
        self.empty_contacts_attributes = attributes[:'emptyContactsAttributes']
      else
        self.empty_contacts_attributes = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          file_url == o.file_url &&
          file_body == o.file_body &&
          json_body == o.json_body &&
          list_ids == o.list_ids &&
          notify_url == o.notify_url &&
          new_list == o.new_list &&
          email_blacklist == o.email_blacklist &&
          sms_blacklist == o.sms_blacklist &&
          update_existing_contacts == o.update_existing_contacts &&
          empty_contacts_attributes == o.empty_contacts_attributes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_url, file_body, json_body, list_ids, notify_url, new_list, email_blacklist, sms_blacklist, update_existing_contacts, empty_contacts_attributes].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SibApiV3Sdk.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
