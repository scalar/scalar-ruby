# typed: strong

module Scalar
  module Models
    module Sdks
      class RepositoryUpdatePublishingParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Scalar::Sdks::RepositoryUpdatePublishingParams,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :uid

        sig do
          returns(
            Scalar::Sdks::RepositoryUpdatePublishingParams::Language::OrSymbol
          )
        end
        attr_accessor :language

        sig { returns(T::Boolean) }
        attr_accessor :publish_on_merge

        sig do
          returns(
            T.nilable(
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::OrSymbol
            )
          )
        end
        attr_reader :access

        sig do
          params(
            access:
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::OrSymbol
          ).void
        end
        attr_writer :access

        sig do
          returns(
            T.nilable(
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol
            )
          )
        end
        attr_reader :auth_method

        sig do
          params(
            auth_method:
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol
          ).void
        end
        attr_writer :auth_method

        sig { returns(T.nilable(String)) }
        attr_reader :tag

        sig { params(tag: String).void }
        attr_writer :tag

        sig do
          params(
            uid: String,
            language:
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::OrSymbol,
            publish_on_merge: T::Boolean,
            access:
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::OrSymbol,
            auth_method:
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol,
            tag: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          uid:,
          language:,
          publish_on_merge:,
          access: nil,
          auth_method: nil,
          tag: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              uid: String,
              language:
                Scalar::Sdks::RepositoryUpdatePublishingParams::Language::OrSymbol,
              publish_on_merge: T::Boolean,
              access:
                Scalar::Sdks::RepositoryUpdatePublishingParams::Access::OrSymbol,
              auth_method:
                Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol,
              tag: String,
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
              T.all(
                Symbol,
                Scalar::Sdks::RepositoryUpdatePublishingParams::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TYPESCRIPT =
            T.let(
              :typescript,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          PYTHON =
            T.let(
              :python,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          CLI =
            T.let(
              :cli,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          CSHARP =
            T.let(
              :csharp,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          JAVA =
            T.let(
              :java,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          RUBY =
            T.let(
              :ruby,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          GO =
            T.let(
              :go,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          RUST =
            T.let(
              :rust,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          KOTLIN =
            T.let(
              :kotlin,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          CPP =
            T.let(
              :cpp,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )
          DART =
            T.let(
              :dart,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryUpdatePublishingParams::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Access
          extend Scalar::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Scalar::Sdks::RepositoryUpdatePublishingParams::Access
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC =
            T.let(
              :public,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::TaggedSymbol
            )
          RESTRICTED =
            T.let(
              :restricted,
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryUpdatePublishingParams::Access::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module AuthMethod
          extend Scalar::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OIDC =
            T.let(
              :oidc,
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::TaggedSymbol
            )
          ACCESS_TOKEN =
            T.let(
              :"access-token",
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::TaggedSymbol
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
