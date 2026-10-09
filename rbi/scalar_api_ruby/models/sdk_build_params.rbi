# typed: strong

module Scalar
  module Models
    class SdkBuildParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::SdkBuildParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :uid

      sig do
        returns(T.nilable(T::Array[Scalar::SdkBuildParams::Language::OrSymbol]))
      end
      attr_reader :languages

      sig do
        params(
          languages: T::Array[Scalar::SdkBuildParams::Language::OrSymbol]
        ).void
      end
      attr_writer :languages

      sig { returns(T.nilable(String)) }
      attr_reader :version

      sig { params(version: String).void }
      attr_writer :version

      sig do
        params(
          uid: String,
          languages: T::Array[Scalar::SdkBuildParams::Language::OrSymbol],
          version: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(uid:, languages: nil, version: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            uid: String,
            languages: T::Array[Scalar::SdkBuildParams::Language::OrSymbol],
            version: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Language
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Scalar::SdkBuildParams::Language) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TYPESCRIPT =
          T.let(:typescript, Scalar::SdkBuildParams::Language::TaggedSymbol)
        PYTHON = T.let(:python, Scalar::SdkBuildParams::Language::TaggedSymbol)
        CLI = T.let(:cli, Scalar::SdkBuildParams::Language::TaggedSymbol)
        CSHARP = T.let(:csharp, Scalar::SdkBuildParams::Language::TaggedSymbol)
        JAVA = T.let(:java, Scalar::SdkBuildParams::Language::TaggedSymbol)
        RUBY = T.let(:ruby, Scalar::SdkBuildParams::Language::TaggedSymbol)
        PHP = T.let(:php, Scalar::SdkBuildParams::Language::TaggedSymbol)
        GO = T.let(:go, Scalar::SdkBuildParams::Language::TaggedSymbol)
        RUST = T.let(:rust, Scalar::SdkBuildParams::Language::TaggedSymbol)
        KOTLIN = T.let(:kotlin, Scalar::SdkBuildParams::Language::TaggedSymbol)
        SWIFT = T.let(:swift, Scalar::SdkBuildParams::Language::TaggedSymbol)
        CPP = T.let(:cpp, Scalar::SdkBuildParams::Language::TaggedSymbol)
        DART = T.let(:dart, Scalar::SdkBuildParams::Language::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Scalar::SdkBuildParams::Language::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
