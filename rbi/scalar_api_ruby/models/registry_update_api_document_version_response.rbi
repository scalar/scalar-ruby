# typed: strong

module Scalar
  module Models
    class RegistryUpdateAPIDocumentVersionResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::RegistryUpdateAPIDocumentVersionResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :json_sha

      sig { returns(String) }
      attr_accessor :yaml_sha

      sig do
        params(json_sha: String, yaml_sha: String).returns(T.attached_class)
      end
      def self.new(json_sha:, yaml_sha:)
      end

      sig { override.returns({ json_sha: String, yaml_sha: String }) }
      def to_hash
      end
    end
  end
end
