# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerListParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::ServerListParams, Scalar::Internal::AnyHash)
          end

        sig do
          params(request_options: Scalar::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Scalar::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
