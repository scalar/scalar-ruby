# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      class TeamInvite < Scalar::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute role
        #
        #   @return [Symbol, Scalar::Models::Teams::Role]
        required :role, enum: -> { Scalar::Teams::Role }

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute expires
        #
        #   @return [Float, nil]
        optional :expires, Float

        # @!method initialize(email:, role:, uid:, expires: nil)
        #   @param email [String]
        #   @param role [Symbol, Scalar::Models::Teams::Role]
        #   @param uid [String]
        #   @param expires [Float]
      end
    end

    TeamInvite = Teams::TeamInvite
  end
end
