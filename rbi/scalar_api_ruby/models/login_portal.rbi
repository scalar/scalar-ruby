# typed: strong

module Scalar
  module Models
    class LoginPortal < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::LoginPortal, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :title

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(slug: String, title: String, uid: String).returns(
          T.attached_class
        )
      end
      def self.new(slug:, title:, uid:)
      end

      sig { override.returns({ slug: String, title: String, uid: String }) }
      def to_hash
      end
    end
  end
end
