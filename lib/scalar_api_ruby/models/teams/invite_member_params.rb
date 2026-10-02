# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      # @see Scalar::Resources::Teams::Invites#member
      class InviteMemberParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute role
        #
        #   @return [Symbol, Scalar::Models::Teams::Role]
        required :role, enum: -> { Scalar::Teams::Role }

        # @!method initialize(email:, role:, request_options: {})
        #   @param email [String]
        #   @param role [Symbol, Scalar::Models::Teams::Role]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
