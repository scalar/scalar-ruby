# frozen_string_literal: true

module Scalar
  module Models
    class Theme < Scalar::Internal::Type::BaseModel
      # @!attribute description
      #
      #   @return [String]
      required :description, String

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

      # @!method initialize(description:, name:, slug:, uid:)
      #   @param description [String]
      #   @param name [String]
      #   @param slug [String]
      #   @param uid [String]
    end
  end
end
