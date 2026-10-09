# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_project_config
    class ScalarDocListProjectConfigResponse < Scalar::Internal::Type::BaseModel
      # @!attribute base_token
      #
      #   @return [String]
      required :base_token, String, api_name: :baseToken

      # @!attribute content
      #
      #   @return [String]
      required :content, String

      # @!attribute path
      #
      #   @return [String]
      required :path, String

      # @!attribute ref
      #
      #   @return [String]
      required :ref, String

      # @!method initialize(base_token:, content:, path:, ref:)
      #   @param base_token [String]
      #   @param content [String]
      #   @param path [String]
      #   @param ref [String]
    end
  end
end
