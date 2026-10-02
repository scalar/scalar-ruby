# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      class TeamMember < Scalar::Internal::Type::BaseModel
        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute role
        #
        #   @return [Symbol, Scalar::Models::Teams::Role]
        required :role, enum: -> { Scalar::Teams::Role }

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute image_uri
        #
        #   @return [String, nil]
        optional :image_uri, String, api_name: :imageUri

        # @!method initialize(display_name:, role:, uid:, image_uri: nil)
        #   @param display_name [String]
        #   @param role [Symbol, Scalar::Models::Teams::Role]
        #   @param uid [String]
        #   @param image_uri [String]
      end
    end

    TeamMember = Teams::TeamMember
  end
end
