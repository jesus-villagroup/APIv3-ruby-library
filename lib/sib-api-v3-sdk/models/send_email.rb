=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SibApiV3Sdk

  class SendEmail
    # List of the email addresses of the recipients. For example, ['abc@example.com', 'asd@example.com'].
    attr_accessor :email_to

    # List of the email addresses of the recipients in bcc
    attr_accessor :email_bcc

    # List of the email addresses of the recipients in cc
    attr_accessor :email_cc

    # Email address which shall be used by campaign recipients to reply back
    attr_accessor :reply_to

    # Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps
    attr_accessor :attachment_url

    # Pass the list of content (base64 encoded) and name of the attachment. For example, [{'content':'base64 encoded content 1', 'name':'attcahment1'}, {'content':'base64 encoded content 2', 'name':'attcahment2'}].
    attr_accessor :attachment

    # Pass the set of headers that shall be sent along the mail headers in the original email. 'sender.ip' header can be set (only for dedicated ip users) to mention the IP to be used for sending transactional emails. For example, {'Content-Type':'text/html', 'charset':'iso-8859-1', 'sender.ip':'1.2.3.4'}
    attr_accessor :headers

    # Pass the set of attributes to customize the template. For example, {'FNAME':'Joe', 'LNAME':'Doe'}
    attr_accessor :attributes

    # Tag your emails to find them more easily
    attr_accessor :tags


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_to' => :'emailTo',
        :'email_bcc' => :'emailBcc',
        :'email_cc' => :'emailCc',
        :'reply_to' => :'replyTo',
        :'attachment_url' => :'attachmentUrl',
        :'attachment' => :'attachment',
        :'headers' => :'headers',
        :'attributes' => :'attributes',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email_to' => :'Array<String>',
        :'email_bcc' => :'Array<String>',
        :'email_cc' => :'Array<String>',
        :'reply_to' => :'String',
        :'attachment_url' => :'String',
        :'attachment' => :'Array<SendEmailAttachment>',
        :'headers' => :'Object',
        :'attributes' => :'Object',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'emailTo')
        if (value = attributes[:'emailTo']).is_a?(Array)
          self.email_to = value
        end
      end

      if attributes.has_key?(:'emailBcc')
        if (value = attributes[:'emailBcc']).is_a?(Array)
          self.email_bcc = value
        end
      end

      if attributes.has_key?(:'emailCc')
        if (value = attributes[:'emailCc']).is_a?(Array)
          self.email_cc = value
        end
      end

      if attributes.has_key?(:'replyTo')
        self.reply_to = attributes[:'replyTo']
      end

      if attributes.has_key?(:'attachmentUrl')
        self.attachment_url = attributes[:'attachmentUrl']
      end

      if attributes.has_key?(:'attachment')
        if (value = attributes[:'attachment']).is_a?(Array)
          self.attachment = value
        end
      end

      if attributes.has_key?(:'headers')
        self.headers = attributes[:'headers']
      end

      if attributes.has_key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @email_to.nil?
        invalid_properties.push("invalid value for 'email_to', email_to cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @email_to.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_to == o.email_to &&
          email_bcc == o.email_bcc &&
          email_cc == o.email_cc &&
          reply_to == o.reply_to &&
          attachment_url == o.attachment_url &&
          attachment == o.attachment &&
          headers == o.headers &&
          attributes == o.attributes &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email_to, email_bcc, email_cc, reply_to, attachment_url, attachment, headers, attributes, tags].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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
