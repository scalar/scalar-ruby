# typed: strong

module Scalar
  module Models
    class SdkVersion < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::SdkVersion, Scalar::Internal::AnyHash) }

      sig { returns(Integer) }
      attr_accessor :created_at

      sig { returns(T::Array[Scalar::SdkVersion::Language::TaggedSymbol]) }
      attr_accessor :languages

      sig { returns(String) }
      attr_accessor :version

      sig do
        params(
          created_at: Integer,
          languages: T::Array[Scalar::SdkVersion::Language::OrSymbol],
          version: String
        ).returns(T.attached_class)
      end
      def self.new(created_at:, languages:, version:)
      end

      sig do
        override.returns(
          {
            created_at: Integer,
            languages: T::Array[Scalar::SdkVersion::Language::TaggedSymbol],
            version: String
          }
        )
      end
      def to_hash
      end

      module Language
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Scalar::SdkVersion::Language) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TYPESCRIPT =
          T.let(:typescript, Scalar::SdkVersion::Language::TaggedSymbol)
        PYTHON = T.let(:python, Scalar::SdkVersion::Language::TaggedSymbol)
        CLI = T.let(:cli, Scalar::SdkVersion::Language::TaggedSymbol)
        CSHARP = T.let(:csharp, Scalar::SdkVersion::Language::TaggedSymbol)
        JAVA = T.let(:java, Scalar::SdkVersion::Language::TaggedSymbol)
        RUBY = T.let(:ruby, Scalar::SdkVersion::Language::TaggedSymbol)
        PHP = T.let(:php, Scalar::SdkVersion::Language::TaggedSymbol)
        GO = T.let(:go, Scalar::SdkVersion::Language::TaggedSymbol)
        RUST = T.let(:rust, Scalar::SdkVersion::Language::TaggedSymbol)
        KOTLIN = T.let(:kotlin, Scalar::SdkVersion::Language::TaggedSymbol)
        SWIFT = T.let(:swift, Scalar::SdkVersion::Language::TaggedSymbol)
        CPP = T.let(:cpp, Scalar::SdkVersion::Language::TaggedSymbol)
        DART = T.let(:dart, Scalar::SdkVersion::Language::TaggedSymbol)

        sig do
          override.returns(T::Array[Scalar::SdkVersion::Language::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
