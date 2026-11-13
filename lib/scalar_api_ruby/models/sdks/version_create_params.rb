# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Versions#create
      class VersionCreateParams < Scalar::Internal::Type::BaseModel
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

        # @!attribute api_version
        #   @deprecated
        #
        #   Removed. A request that carries it is refused with a 400.
        #
        #   @return [Object, nil]
        optional :api_version, Scalar::Internal::Type::Unknown, api_name: :apiVersion

        # @!method initialize(uid:, version:, api_version: nil, request_options: {})
        #   @param uid [String]
        #
        #   @param version [String]
        #
        #   @param api_version [Object] Removed. A request that carries it is refused with a 400.
        #
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
