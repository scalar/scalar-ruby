# typed: strong

module Scalar
  module Models
    class SdkVersion < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::SdkVersion, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :api_version

      sig { returns(T::Array[Scalar::SdkVersion::Language::TaggedSymbol]) }
      attr_accessor :languages

      sig { returns(Scalar::SdkVersion::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :version

      sig { returns(T.nilable(Integer)) }
      attr_reader :created_at

      sig { params(created_at: Integer).void }
      attr_writer :created_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :published_at

      sig { params(published_at: Integer).void }
      attr_writer :published_at

      sig do
        params(
          api_version: String,
          languages: T::Array[Scalar::SdkVersion::Language::OrSymbol],
          status: Scalar::SdkVersion::Status::OrSymbol,
          version: String,
          created_at: Integer,
          published_at: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        api_version:,
        languages:,
        status:,
        version:,
        created_at: nil,
        published_at: nil
      )
      end

      sig do
        override.returns(
          {
            api_version: String,
            languages: T::Array[Scalar::SdkVersion::Language::TaggedSymbol],
            status: Scalar::SdkVersion::Status::TaggedSymbol,
            version: String,
            created_at: Integer,
            published_at: Integer
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

      module Status
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Scalar::SdkVersion::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Scalar::SdkVersion::Status::TaggedSymbol)
        PUBLISHED = T.let(:published, Scalar::SdkVersion::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Scalar::SdkVersion::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
