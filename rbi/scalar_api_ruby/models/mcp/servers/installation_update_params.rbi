# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        class InstallationUpdateParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Scalar::Mcp::Servers::InstallationUpdateParams,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :installation_id

          sig { returns(T.nilable(String)) }
          attr_accessor :mcp_version

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The environment’s current slug. An environment cannot be renamed, so any other
          # slug is refused.
          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          sig do
            params(
              id: String,
              installation_id: String,
              mcp_version: T.nilable(String),
              name: String,
              slug: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            installation_id:,
            mcp_version: nil,
            name: nil,
            # The environment’s current slug. An environment cannot be renamed, so any other
            # slug is refused.
            slug: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                installation_id: String,
                mcp_version: T.nilable(String),
                name: String,
                slug: String,
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
