# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#retrieve
      class ServerRetrieveParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:, request_options: {})
        #   @param id [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
