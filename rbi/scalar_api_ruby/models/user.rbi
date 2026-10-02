# typed: strong

module Scalar
  module Models
    class User < Scalar::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Scalar::User, Scalar::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :active_team_id

      sig { returns(Integer) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :email

      sig { returns(T::Boolean) }
      attr_accessor :has_github

      sig { returns(T::Array[Scalar::TeamSummary]) }
      attr_accessor :teams

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(Integer) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :theme

      sig { params(theme: String).void }
      attr_writer :theme

      sig do
        params(
          active_team_id: T.nilable(String),
          created_at: Integer,
          email: String,
          has_github: T::Boolean,
          teams: T::Array[Scalar::TeamSummary::OrHash],
          uid: String,
          updated_at: Integer,
          theme: String
        ).returns(T.attached_class)
      end
      def self.new(
        active_team_id:,
        created_at:,
        email:,
        has_github:,
        teams:,
        uid:,
        updated_at:,
        theme: nil
      )
      end

      sig do
        override.returns(
          {
            active_team_id: T.nilable(String),
            created_at: Integer,
            email: String,
            has_github: T::Boolean,
            teams: T::Array[Scalar::TeamSummary],
            uid: String,
            updated_at: Integer,
            theme: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
