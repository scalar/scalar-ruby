# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        class InstallationRetrieveParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Scalar::Mcp::Servers::InstallationRetrieveParams,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :installation_id

          sig do
            params(
              id: String,
              installation_id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, installation_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                id: String,
                installation_id: String,
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
end
