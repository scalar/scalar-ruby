# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      # @see Scalar::Resources::Teams::Members#update
      class MemberUpdateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute role
        #
        #   @return [Symbol, Scalar::Models::Teams::Role]
        required :role, enum: -> { Scalar::Teams::Role }

        # @!method initialize(uid:, role:, request_options: {})
        #   @param uid [String]
        #   @param role [Symbol, Scalar::Models::Teams::Role]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
