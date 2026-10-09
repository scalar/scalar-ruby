# typed: strong

module Scalar
  module Models
    class SdkCreateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::SdkCreateParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :api_uid

      sig { returns(T::Array[Scalar::SdkCreateParams::Language::OrSymbol]) }
      attr_accessor :languages

      sig { returns(T.nilable(String)) }
      attr_reader :class_name

      sig { params(class_name: String).void }
      attr_writer :class_name

      sig { returns(T.nilable(String)) }
      attr_reader :config

      sig { params(config: String).void }
      attr_writer :config

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
          api_uid: String,
          languages: T::Array[Scalar::SdkCreateParams::Language::OrSymbol],
          class_name: String,
          config: String,
          slug: String,
          title: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        api_uid:,
        languages:,
        class_name: nil,
        config: nil,
        slug: nil,
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            api_uid: String,
            languages: T::Array[Scalar::SdkCreateParams::Language::OrSymbol],
            class_name: String,
            config: String,
            slug: String,
            title: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Language
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Scalar::SdkCreateParams::Language) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TYPESCRIPT =
          T.let(:typescript, Scalar::SdkCreateParams::Language::TaggedSymbol)
        PYTHON = T.let(:python, Scalar::SdkCreateParams::Language::TaggedSymbol)
        CLI = T.let(:cli, Scalar::SdkCreateParams::Language::TaggedSymbol)
        CSHARP = T.let(:csharp, Scalar::SdkCreateParams::Language::TaggedSymbol)
        JAVA = T.let(:java, Scalar::SdkCreateParams::Language::TaggedSymbol)
        RUBY = T.let(:ruby, Scalar::SdkCreateParams::Language::TaggedSymbol)
        PHP = T.let(:php, Scalar::SdkCreateParams::Language::TaggedSymbol)
        GO = T.let(:go, Scalar::SdkCreateParams::Language::TaggedSymbol)
        RUST = T.let(:rust, Scalar::SdkCreateParams::Language::TaggedSymbol)
        KOTLIN = T.let(:kotlin, Scalar::SdkCreateParams::Language::TaggedSymbol)
        SWIFT = T.let(:swift, Scalar::SdkCreateParams::Language::TaggedSymbol)
        CPP = T.let(:cpp, Scalar::SdkCreateParams::Language::TaggedSymbol)
        DART = T.let(:dart, Scalar::SdkCreateParams::Language::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Scalar::SdkCreateParams::Language::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
