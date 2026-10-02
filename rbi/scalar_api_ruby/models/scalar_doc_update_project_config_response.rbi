# typed: strong

module Scalar
  module Models
    class ScalarDocUpdateProjectConfigResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::ScalarDocUpdateProjectConfigResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :base_token

      sig { returns(T.nilable(String)) }
      attr_accessor :commit_sha

      sig { returns(String) }
      attr_accessor :ref

      sig do
        params(
          base_token: String,
          commit_sha: T.nilable(String),
          ref: String
        ).returns(T.attached_class)
      end
      def self.new(base_token:, commit_sha:, ref:)
      end

      sig do
        override.returns(
          { base_token: String, commit_sha: T.nilable(String), ref: String }
        )
      end
      def to_hash
      end
    end
  end
end
