# frozen_string_literal: true

module Scalar
  module Models
    class Schema < Scalar::Internal::Type::BaseModel
      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute is_private
      #
      #   @return [Boolean]
      required :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute namespace
      #
      #   @return [String]
      required :namespace, String

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute versions
      #
      #   @return [Array<Scalar::Models::ManagedSchemaVersion>]
      required :versions, -> { Scalar::Internal::Type::ArrayOf[Scalar::ManagedSchemaVersion] }

      # @!method initialize(description:, is_private:, namespace:, slug:, title:, uid:, versions:)
      #   @param description [String]
      #   @param is_private [Boolean]
      #   @param namespace [String]
      #   @param slug [String]
      #   @param title [String]
      #   @param uid [String]
      #   @param versions [Array<Scalar::Models::ManagedSchemaVersion>]
    end
  end
end
