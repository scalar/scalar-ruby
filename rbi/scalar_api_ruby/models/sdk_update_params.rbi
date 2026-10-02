# typed: strong

module Scalar
  module Models
    class SdkUpdateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::SdkUpdateParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(T.nilable(String)) }
      attr_accessor :api_uid

      sig { returns(T.nilable(String)) }
      attr_accessor :api_version

      sig { returns(T.nilable(String)) }
      attr_reader :config

      sig { params(config: String).void }
      attr_writer :config

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_private

      sig { params(is_private: T::Boolean).void }
      attr_writer :is_private

      sig { returns(T.nilable(String)) }
      attr_reader :slug

      sig { params(slug: String).void }
      attr_writer :slug

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          uid: String,
          api_uid: T.nilable(String),
          api_version: T.nilable(String),
          config: String,
          is_private: T::Boolean,
          slug: String,
          title: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        uid:,
        api_uid: nil,
        api_version: nil,
        config: nil,
        is_private: nil,
        slug: nil,
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            uid: String,
            api_uid: T.nilable(String),
            api_version: T.nilable(String),
            config: String,
            is_private: T::Boolean,
            slug: String,
            title: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
