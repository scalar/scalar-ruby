# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      # @see Scalar::Resources::Teams::Invites#resend
      class InviteResendParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!method initialize(uid:, request_options: {})
        #   @param uid [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
