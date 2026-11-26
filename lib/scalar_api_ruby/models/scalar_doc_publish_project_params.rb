# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#publish_project
    class ScalarDocPublishProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute commit_sha
      #
      #   @return [Symbol, String, nil]
      optional :commit_sha,
               union: -> { Scalar::ScalarDocPublishProjectParams::CommitSha },
               api_name: :commitSha

      # @!attribute config_path
      #
      #   @return [String, nil]
      optional :config_path, String, api_name: :configPath

      # @!attribute preview
      #
      #   @return [Boolean, nil]
      optional :preview, Scalar::Internal::Type::Boolean

      # @!method initialize(slug:, commit_sha: nil, config_path: nil, preview: nil, request_options: {})
      #   @param slug [String]
      #   @param commit_sha [Symbol, String]
      #   @param config_path [String]
      #   @param preview [Boolean]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]

      module CommitSha
        extend Scalar::Internal::Type::Union

        variant const: :""

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]
      end
    end
  end
end
