# typed: strong

module Scalar
  module Models
    class ScalarDocUpdateProjectConfigParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Scalar::ScalarDocUpdateProjectConfigParams,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :content

      sig { returns(T.nilable(String)) }
      attr_reader :base_token

      sig { params(base_token: String).void }
      attr_writer :base_token

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      sig { returns(T.nilable(String)) }
      attr_reader :ref

      sig { params(ref: String).void }
      attr_writer :ref

      sig do
        params(
          slug: String,
          content: String,
          base_token: String,
          message: String,
          path: String,
          ref: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        slug:,
        content:,
        base_token: nil,
        message: nil,
        path: nil,
        ref: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            slug: String,
            content: String,
            base_token: String,
            message: String,
            path: String,
            ref: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
