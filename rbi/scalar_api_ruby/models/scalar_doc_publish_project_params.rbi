# typed: strong

module Scalar
  module Models
    class ScalarDocPublishProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Scalar::ScalarDocPublishProjectParams,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(T.nilable(String)) }
      attr_reader :commit_sha

      sig { params(commit_sha: String).void }
      attr_writer :commit_sha

      sig { returns(T.nilable(String)) }
      attr_reader :config_path

      sig { params(config_path: String).void }
      attr_writer :config_path

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :preview

      sig { params(preview: T::Boolean).void }
      attr_writer :preview

      sig do
        params(
          slug: String,
          commit_sha: String,
          config_path: String,
          preview: T::Boolean,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        slug:,
        commit_sha: nil,
        config_path: nil,
        preview: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            slug: String,
            commit_sha: String,
            config_path: String,
            preview: T::Boolean,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
