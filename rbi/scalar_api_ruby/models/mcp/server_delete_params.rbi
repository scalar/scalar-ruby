# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerDeleteParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::ServerDeleteParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            id: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, request_options: {})
        end

        sig do
          override.returns(
            { id: String, request_options: Scalar::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
