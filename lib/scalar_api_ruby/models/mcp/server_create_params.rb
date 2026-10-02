# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#create
      class ServerCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute project_uids
        #
        #   @return [Array<String>, nil]
        optional :project_uids, Scalar::Internal::Type::ArrayOf[String], api_name: :projectUids

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute version_uids
        #
        #   @return [Array<String>, nil]
        optional :version_uids, Scalar::Internal::Type::ArrayOf[String], api_name: :versionUids

        # @!method initialize(name:, project_uids: nil, slug: nil, version_uids: nil, request_options: {})
        #   @param name [String]
        #   @param project_uids [Array<String>]
        #   @param slug [String]
        #   @param version_uids [Array<String>]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
