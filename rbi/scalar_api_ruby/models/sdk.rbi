# typed: strong

module Scalar
  module Models
    class Sdk < Scalar::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Scalar::Sdk, Scalar::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :api_uid

      sig { returns(String) }
      attr_accessor :current_version

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(String) }
      attr_accessor :namespace

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(T::Array[Scalar::SdkTargetSummary]) }
      attr_accessor :targets

      sig { returns(String) }
      attr_accessor :title

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(T::Array[Scalar::SdkVersion]) }
      attr_accessor :versions

      sig { returns(T.nilable(String)) }
      attr_accessor :api_version

      sig do
        params(
          api_uid: T.nilable(String),
          current_version: String,
          description: String,
          is_private: T::Boolean,
          namespace: String,
          slug: String,
          targets: T::Array[Scalar::SdkTargetSummary::OrHash],
          title: String,
          uid: String,
          versions: T::Array[Scalar::SdkVersion::OrHash],
          api_version: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        api_uid:,
        current_version:,
        description:,
        is_private:,
        namespace:,
        slug:,
        targets:,
        title:,
        uid:,
        versions:,
        api_version: nil
      )
      end

      sig do
        override.returns(
          {
            api_uid: T.nilable(String),
            current_version: String,
            description: String,
            is_private: T::Boolean,
            namespace: String,
            slug: String,
            targets: T::Array[Scalar::SdkTargetSummary],
            title: String,
            uid: String,
            versions: T::Array[Scalar::SdkVersion],
            api_version: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
