# typed: strong

module Scalar
  module Models
    class AccessGroupCreateResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::AccessGroupCreateResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :allowed_domains

      sig { returns(String) }
      attr_accessor :allowed_emails

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(
          allowed_domains: String,
          allowed_emails: String,
          name: String,
          slug: String,
          uid: String
        ).returns(T.attached_class)
      end
      def self.new(allowed_domains:, allowed_emails:, name:, slug:, uid:)
      end

      sig do
        override.returns(
          {
            allowed_domains: String,
            allowed_emails: String,
            name: String,
            slug: String,
            uid: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
