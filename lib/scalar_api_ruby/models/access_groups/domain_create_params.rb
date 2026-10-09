# frozen_string_literal: true

module Scalar
  module Models
    module AccessGroups
      # @see Scalar::Resources::AccessGroups::Domains#create
      class DomainCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute domain
        #
        #   @return [String]
        required :domain, String

        # @!method initialize(slug:, domain:, request_options: {})
        #   @param slug [String]
        #   @param domain [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
