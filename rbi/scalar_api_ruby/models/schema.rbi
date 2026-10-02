# typed: strong

module Scalar
  module Models
    class Schema < Scalar::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Scalar::Schema, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(String) }
      attr_accessor :namespace

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :title

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(T::Array[Scalar::ManagedSchemaVersion]) }
      attr_accessor :versions

      sig do
        params(
          description: String,
          is_private: T::Boolean,
          namespace: String,
          slug: String,
          title: String,
          uid: String,
          versions: T::Array[Scalar::ManagedSchemaVersion::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        description:,
        is_private:,
        namespace:,
        slug:,
        title:,
        uid:,
        versions:
      )
      end

      sig do
        override.returns(
          {
            description: String,
            is_private: T::Boolean,
            namespace: String,
            slug: String,
            title: String,
            uid: String,
            versions: T::Array[Scalar::ManagedSchemaVersion]
          }
        )
      end
      def to_hash
      end
    end
  end
end
