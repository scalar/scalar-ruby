# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::AccessGroups#create
    class AccessGroupCreateResponse < Scalar::Internal::Type::BaseModel
      # @!attribute allowed_domains
      #
      #   @return [String]
      required :allowed_domains, String, api_name: :allowedDomains

      # @!attribute allowed_emails
      #
      #   @return [String]
      required :allowed_emails, String, api_name: :allowedEmails

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!method initialize(allowed_domains:, allowed_emails:, name:, slug:, uid:)
      #   @param allowed_domains [String]
      #   @param allowed_emails [String]
      #   @param name [String]
      #   @param slug [String]
      #   @param uid [String]
    end
  end
end
