# typed: strong

module Scalar
  module Models
    module Teams
      class MemberListResponse < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::Teams::MemberListResponse,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Scalar::Teams::TeamMember]) }
        attr_accessor :members

        sig { returns(T::Array[Scalar::Teams::TeamInvite]) }
        attr_accessor :pending_invites

        sig do
          params(
            members: T::Array[Scalar::Teams::TeamMember::OrHash],
            pending_invites: T::Array[Scalar::Teams::TeamInvite::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(members:, pending_invites:)
        end

        sig do
          override.returns(
            {
              members: T::Array[Scalar::Teams::TeamMember],
              pending_invites: T::Array[Scalar::Teams::TeamInvite]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
