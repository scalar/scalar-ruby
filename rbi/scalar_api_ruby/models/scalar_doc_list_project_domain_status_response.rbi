# typed: strong

module Scalar
  module Models
    class ScalarDocListProjectDomainStatusResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::ScalarDocListProjectDomainStatusResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :domain

      sig do
        returns(
          T.nilable(
            Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected
          )
        )
      end
      attr_reader :expected

      sig do
        params(
          expected:
            T.nilable(
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected::OrHash
            )
        ).void
      end
      attr_writer :expected

      sig { returns(T::Array[String]) }
      attr_accessor :found

      sig do
        returns(
          Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        params(
          domain: T.nilable(String),
          expected:
            T.nilable(
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected::OrHash
            ),
          found: T::Array[String],
          status:
            Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(domain:, expected:, found:, status:)
      end

      sig do
        override.returns(
          {
            domain: T.nilable(String),
            expected:
              T.nilable(
                Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected
              ),
            found: T::Array[String],
            status:
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Expected < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :target

        sig { returns(Symbol) }
        attr_accessor :type

        sig { params(target: String, type: Symbol).returns(T.attached_class) }
        def self.new(target:, type: :CNAME)
        end

        sig { override.returns({ target: String, type: Symbol }) }
        def to_hash
        end
      end

      module Status
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFIED =
          T.let(
            :verified,
            Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
          )
        MISCONFIGURED =
          T.let(
            :misconfigured,
            Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
