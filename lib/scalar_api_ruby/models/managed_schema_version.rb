# frozen_string_literal: true

module Scalar
  module Models
    class ManagedSchemaVersion < Scalar::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Integer]
      required :created_at, Integer, api_name: :createdAt

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute updated_at
      #
      #   @return [Integer]
      required :updated_at, Integer, api_name: :updatedAt

      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!attribute json_sha
      #
      #   @return [String, nil]
      optional :json_sha, String, api_name: :jsonSha

      # @!attribute yaml_sha
      #
      #   @return [String, nil]
      optional :yaml_sha, String, api_name: :yamlSha

      # @!method initialize(created_at:, uid:, updated_at:, version:, json_sha: nil, yaml_sha: nil)
      #   @param created_at [Integer]
      #   @param uid [String]
      #   @param updated_at [Integer]
      #   @param version [String]
      #   @param json_sha [String]
      #   @param yaml_sha [String]
    end
  end
end
