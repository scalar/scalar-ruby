# frozen_string_literal: true

module Scalar
  module Models
    class TeamSummary < Scalar::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute image_uri
      #
      #   @return [String, nil]
      optional :image_uri, String, api_name: :imageUri

      # @!method initialize(name:, uid:, image_uri: nil)
      #   @param name [String]
      #   @param uid [String]
      #   @param image_uri [String]
    end
  end
end
