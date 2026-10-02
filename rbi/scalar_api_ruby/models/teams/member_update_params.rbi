# typed: strong

module Scalar
  module Models
    module Teams
      class MemberUpdateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Teams::MemberUpdateParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :uid

        sig { returns(Scalar::Teams::Role::OrSymbol) }
        attr_accessor :role

        sig do
          params(
            uid: String,
            role: Scalar::Teams::Role::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(uid:, role:, request_options: {})
        end

        sig do
          override.returns(
            {
              uid: String,
              role: Scalar::Teams::Role::OrSymbol,
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
