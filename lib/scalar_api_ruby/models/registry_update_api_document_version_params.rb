# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Registry#update_api_document_version
    class RegistryUpdateAPIDocumentVersionParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute namespace
      #
      #   @return [String]
      required :namespace, String

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute semver
      #
      #   @return [String]
      required :semver, String

      # @!attribute document
      #
      #   @return [String]
      required :document, String

      # @!method initialize(namespace:, slug:, semver:, document:, request_options: {})
      #   @param namespace [String]
      #   @param slug [String]
      #   @param semver [String]
      #   @param document [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
