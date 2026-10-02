# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      # @see Scalar::Resources::Teams::Members#list
      class MemberListResponse < Scalar::Internal::Type::BaseModel
        # @!attribute members
        #
        #   @return [Array<Scalar::Models::Teams::TeamMember>]
        required :members, -> { Scalar::Internal::Type::ArrayOf[Scalar::Teams::TeamMember] }

        # @!attribute pending_invites
        #
        #   @return [Array<Scalar::Models::Teams::TeamInvite>]
        required :pending_invites,
                 -> { Scalar::Internal::Type::ArrayOf[Scalar::Teams::TeamInvite] },
                 api_name: :pendingInvites

        # @!method initialize(members:, pending_invites:)
        #   @param members [Array<Scalar::Models::Teams::TeamMember>]
        #   @param pending_invites [Array<Scalar::Models::Teams::TeamInvite>]
      end
    end
  end
end
