# typed: strong

module Scalar
  module Models
    class APIDocument < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::APIDocument, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(String) }
      attr_accessor :namespace

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :tags

      sig { returns(String) }
      attr_accessor :title

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(String) }
      attr_accessor :version

      sig { returns(T::Array[Scalar::ManagedDocVersion]) }
      attr_accessor :versions

      sig do
        params(
          description: String,
          is_private: T::Boolean,
          namespace: String,
          slug: String,
          tags: String,
          title: String,
          uid: String,
          version: String,
          versions: T::Array[Scalar::ManagedDocVersion::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        description:,
        is_private:,
        namespace:,
        slug:,
        tags:,
        title:,
        uid:,
        version:,
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
            tags: String,
            title: String,
            uid: String,
            version: String,
            versions: T::Array[Scalar::ManagedDocVersion]
          }
        )
      end
      def to_hash
      end
    end
  end
end
