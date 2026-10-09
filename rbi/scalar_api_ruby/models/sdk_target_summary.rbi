# typed: strong

module Scalar
  module Models
    class SdkTargetSummary < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::SdkTargetSummary, Scalar::Internal::AnyHash)
        end

      sig { returns(Scalar::SdkTargetSummary::Language::TaggedSymbol) }
      attr_accessor :language

      sig { returns(String) }
      attr_accessor :slug

      sig do
        params(
          language: Scalar::SdkTargetSummary::Language::OrSymbol,
          slug: String
        ).returns(T.attached_class)
      end
      def self.new(language:, slug:)
      end

      sig do
        override.returns(
          {
            language: Scalar::SdkTargetSummary::Language::TaggedSymbol,
            slug: String
          }
        )
      end
      def to_hash
      end

      module Language
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Scalar::SdkTargetSummary::Language) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TYPESCRIPT =
          T.let(:typescript, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        PYTHON =
          T.let(:python, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        CLI = T.let(:cli, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        CSHARP =
          T.let(:csharp, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        JAVA = T.let(:java, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        RUBY = T.let(:ruby, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        PHP = T.let(:php, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        GO = T.let(:go, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        RUST = T.let(:rust, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        KOTLIN =
          T.let(:kotlin, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        SWIFT = T.let(:swift, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        CPP = T.let(:cpp, Scalar::SdkTargetSummary::Language::TaggedSymbol)
        DART = T.let(:dart, Scalar::SdkTargetSummary::Language::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Scalar::SdkTargetSummary::Language::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
