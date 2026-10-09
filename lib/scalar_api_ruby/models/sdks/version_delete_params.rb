# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Versions#delete
      class VersionDeleteParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute version
        #
        #   @return [String]
        required :version, String

        # @!method initialize(uid:, version:, request_options: {})
        #   @param uid [String]
        #   @param version [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
