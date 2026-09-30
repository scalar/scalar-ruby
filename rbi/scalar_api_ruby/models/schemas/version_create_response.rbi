# typed: strong

module Scalar
  module Models
    module Schemas
      class VersionCreateResponse < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::Schemas::VersionCreateResponse,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :uid

        sig { params(uid: String).returns(T.attached_class) }
        def self.new(uid:)
        end

        sig { override.returns({ uid: String }) }
        def to_hash
        end
      end
    end
  end
end
