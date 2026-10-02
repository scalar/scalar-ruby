# typed: strong

module Scalar
  module Models
    module AccessGroups
      class DomainCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Scalar::AccessGroups::DomainCreateParams,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :slug

        sig { returns(String) }
        attr_accessor :domain

        sig do
          params(
            slug: String,
            domain: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(slug:, domain:, request_options: {})
        end

        sig do
          override.returns(
            {
              slug: String,
              domain: String,
              request_options: Scalar::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
