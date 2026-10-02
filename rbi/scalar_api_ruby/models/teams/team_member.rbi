# typed: strong

module Scalar
  module Models
    TeamMember = Teams::TeamMember

    module Teams
      class TeamMember < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Scalar::Teams::TeamMember, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(Scalar::Teams::Role::TaggedSymbol) }
        attr_accessor :role

        sig { returns(String) }
        attr_accessor :uid

        sig { returns(T.nilable(String)) }
        attr_reader :image_uri

        sig { params(image_uri: String).void }
        attr_writer :image_uri

        sig do
          params(
            display_name: String,
            role: Scalar::Teams::Role::OrSymbol,
            uid: String,
            image_uri: String
          ).returns(T.attached_class)
        end
        def self.new(display_name:, role:, uid:, image_uri: nil)
        end

        sig do
          override.returns(
            {
              display_name: String,
              role: Scalar::Teams::Role::TaggedSymbol,
              uid: String,
              image_uri: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
