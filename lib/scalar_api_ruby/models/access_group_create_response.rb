# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::AccessGroups#create
    class AccessGroupCreateResponse < Scalar::Internal::Type::BaseModel
      # @!attribute allowed_domains
      #
      #   @return [Object]
      required :allowed_domains, Scalar::Internal::Type::Unknown, api_name: :allowedDomains

      # @!attribute allowed_emails
      #
      #   @return [Object]
      required :allowed_emails, Scalar::Internal::Type::Unknown, api_name: :allowedEmails

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
      #   @param allowed_domains [Object]
      #   @param allowed_emails [Object]
      #   @param name [String]
      #   @param slug [String]
      #   @param uid [String]
    end
  end
end
