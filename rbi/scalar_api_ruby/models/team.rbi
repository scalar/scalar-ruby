# typed: strong

module Scalar
  module Models
    class Team < Scalar::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Scalar::Team, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :theme

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(T.nilable(String)) }
      attr_reader :image_uri

      sig { params(image_uri: String).void }
      attr_writer :image_uri

      sig do
        params(
          name: String,
          slug: String,
          theme: String,
          uid: String,
          image_uri: String
        ).returns(T.attached_class)
      end
      def self.new(name:, slug:, theme:, uid:, image_uri: nil)
      end

      sig do
        override.returns(
          {
            name: String,
            slug: String,
            theme: String,
            uid: String,
            image_uri: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
