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
        attr_accessor :api_version

        sig { returns(String) }
        attr_accessor :version

        sig do
          params(
            uid: String,
            api_version: String,
            version: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(uid:, api_version:, version:, request_options: {})
        end

        sig do
          override.returns(
            {
              uid: String,
              api_version: String,
              version: String,
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
