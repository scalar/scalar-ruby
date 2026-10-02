# typed: strong

module Scalar
  module Models
    class ManagedSchemaVersion < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::ManagedSchemaVersion, Scalar::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(Integer) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :version

      sig { returns(T.nilable(String)) }
      attr_reader :json_sha

      sig { params(json_sha: String).void }
      attr_writer :json_sha

      sig { returns(T.nilable(String)) }
      attr_reader :yaml_sha

      sig { params(yaml_sha: String).void }
      attr_writer :yaml_sha

      sig do
        params(
          created_at: Integer,
          uid: String,
          updated_at: Integer,
          version: String,
          json_sha: String,
          yaml_sha: String
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        uid:,
        updated_at:,
        version:,
        json_sha: nil,
        yaml_sha: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Integer,
            uid: String,
            updated_at: Integer,
            version: String,
            json_sha: String,
            yaml_sha: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
