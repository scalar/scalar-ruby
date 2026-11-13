# typed: strong

module Scalar
  module Models
    module Sdks
      class VersionCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Sdks::VersionCreateParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :uid

        sig { returns(String) }
        attr_accessor :version

        # Removed. A request that carries it is refused with a 400.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :api_version

        sig { params(api_version: T.anything).void }
        attr_writer :api_version

        sig do
          params(
            uid: String,
            version: String,
            api_version: T.anything,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          uid:,
          version:,
          # Removed. A request that carries it is refused with a 400.
          api_version: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              uid: String,
              version: String,
              api_version: T.anything,
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
