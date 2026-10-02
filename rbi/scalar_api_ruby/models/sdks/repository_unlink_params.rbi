# typed: strong

module Scalar
  module Models
    module Sdks
      class RepositoryUnlinkParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Scalar::Sdks::RepositoryUnlinkParams,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :uid

        sig do
          returns(Scalar::Sdks::RepositoryUnlinkParams::Language::OrSymbol)
        end
        attr_accessor :language

        sig do
          params(
            uid: String,
            language: Scalar::Sdks::RepositoryUnlinkParams::Language::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(uid:, language:, request_options: {})
        end

        sig do
          override.returns(
            {
              uid: String,
              language:
                Scalar::Sdks::RepositoryUnlinkParams::Language::OrSymbol,
              request_options: Scalar::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Language
          extend Scalar::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Scalar::Sdks::RepositoryUnlinkParams::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TYPESCRIPT =
            T.let(
              :typescript,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          PYTHON =
            T.let(
              :python,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          CLI =
            T.let(
              :cli,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          CSHARP =
            T.let(
              :csharp,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          JAVA =
            T.let(
              :java,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          RUBY =
            T.let(
              :ruby,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          GO =
            T.let(
              :go,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          RUST =
            T.let(
              :rust,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          KOTLIN =
            T.let(
              :kotlin,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          CPP =
            T.let(
              :cpp,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )
          DART =
            T.let(
              :dart,
              Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryUnlinkParams::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
