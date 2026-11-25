# typed: strong

module Scalar
  module Models
    module Sdks
      class RepositoryLinkParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Sdks::RepositoryLinkParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :uid

        # Release promote branch. Platform-managed branches such as scalar-next and
        # scalar-generated are reserved.
        sig { returns(String) }
        attr_accessor :base_branch

        sig { returns(Scalar::Sdks::RepositoryLinkParams::Language::OrSymbol) }
        attr_accessor :language

        sig { returns(Integer) }
        attr_accessor :repository_id

        sig { returns(T.nilable(String)) }
        attr_reader :prerelease_type

        sig { params(prerelease_type: String).void }
        attr_writer :prerelease_type

        # Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        # saved policy.
        sig do
          returns(
            T.nilable(Scalar::Sdks::RepositoryLinkParams::Promotion::OrSymbol)
          )
        end
        attr_reader :promotion

        sig do
          params(
            promotion: Scalar::Sdks::RepositoryLinkParams::Promotion::OrSymbol
          ).void
        end
        attr_writer :promotion

        sig do
          params(
            uid: String,
            base_branch: String,
            language: Scalar::Sdks::RepositoryLinkParams::Language::OrSymbol,
            repository_id: Integer,
            prerelease_type: String,
            promotion: Scalar::Sdks::RepositoryLinkParams::Promotion::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          uid:,
          # Release promote branch. Platform-managed branches such as scalar-next and
          # scalar-generated are reserved.
          base_branch:,
          language:,
          repository_id:,
          prerelease_type: nil,
          # Controls when a build becomes current and syncs to GitHub. Omit to preserve the
          # saved policy.
          promotion: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              uid: String,
              base_branch: String,
              language: Scalar::Sdks::RepositoryLinkParams::Language::OrSymbol,
              repository_id: Integer,
              prerelease_type: String,
              promotion:
                Scalar::Sdks::RepositoryLinkParams::Promotion::OrSymbol,
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
              T.all(Symbol, Scalar::Sdks::RepositoryLinkParams::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TYPESCRIPT =
            T.let(
              :typescript,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          PYTHON =
            T.let(
              :python,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          CLI =
            T.let(
              :cli,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          CSHARP =
            T.let(
              :csharp,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          JAVA =
            T.let(
              :java,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          RUBY =
            T.let(
              :ruby,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          GO =
            T.let(
              :go,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          RUST =
            T.let(
              :rust,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          KOTLIN =
            T.let(
              :kotlin,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          CPP =
            T.let(
              :cpp,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )
          DART =
            T.let(
              :dart,
              Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryLinkParams::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        # saved policy.
        module Promotion
          extend Scalar::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Scalar::Sdks::RepositoryLinkParams::Promotion)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTOMATIC =
            T.let(
              :automatic,
              Scalar::Sdks::RepositoryLinkParams::Promotion::TaggedSymbol
            )
          MANUAL =
            T.let(
              :manual,
              Scalar::Sdks::RepositoryLinkParams::Promotion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryLinkParams::Promotion::TaggedSymbol
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
