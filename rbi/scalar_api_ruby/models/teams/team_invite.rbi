# typed: strong

module Scalar
  module Models
    TeamInvite = Teams::TeamInvite

    module Teams
      class TeamInvite < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Scalar::Teams::TeamInvite, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(Scalar::Teams::Role::TaggedSymbol) }
        attr_accessor :role

        sig { returns(String) }
        attr_accessor :uid

        sig { returns(T.nilable(Float)) }
        attr_reader :expires

        sig { params(expires: Float).void }
        attr_writer :expires

        sig do
          params(
            email: String,
            role: Scalar::Teams::Role::OrSymbol,
            uid: String,
            expires: Float
          ).returns(T.attached_class)
        end
        def self.new(email:, role:, uid:, expires: nil)
        end

        sig do
          override.returns(
            {
              email: String,
              role: Scalar::Teams::Role::TaggedSymbol,
              uid: String,
              expires: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
