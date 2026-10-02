# typed: strong

module Scalar
  module Models
    class ScalarDocListProjectConfigResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::ScalarDocListProjectConfigResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :base_token

      sig { returns(String) }
      attr_accessor :content

      sig { returns(String) }
      attr_accessor :path

      sig { returns(String) }
      attr_accessor :ref

      sig do
        params(
          base_token: String,
          content: String,
          path: String,
          ref: String
        ).returns(T.attached_class)
      end
      def self.new(base_token:, content:, path:, ref:)
      end

      sig do
        override.returns(
          { base_token: String, content: String, path: String, ref: String }
        )
      end
      def to_hash
      end
    end
  end
end
