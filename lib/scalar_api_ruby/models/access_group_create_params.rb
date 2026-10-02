# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::AccessGroups#create
    class AccessGroupCreateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute allowed_domains
      #
      #   @return [String, nil]
      optional :allowed_domains, String, api_name: :allowedDomains

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute slug
      #
      #   @return [String, nil]
      optional :slug, String

      # @!method initialize(allowed_domains: nil, name: nil, slug: nil, request_options: {})
      #   @param allowed_domains [String]
      #   @param name [String]
      #   @param slug [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
