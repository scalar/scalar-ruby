# typed: strong

module Scalar
  module Models
    class Theme < Scalar::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Scalar::Theme, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(
          description: String,
          name: String,
          slug: String,
          uid: String
        ).returns(T.attached_class)
      end
      def self.new(description:, name:, slug:, uid:)
      end

      sig do
        override.returns(
          { description: String, name: String, slug: String, uid: String }
        )
      end
      def to_hash
      end
    end
  end
end
