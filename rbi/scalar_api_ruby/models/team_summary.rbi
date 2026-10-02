# typed: strong

module Scalar
  module Models
    class TeamSummary < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::TeamSummary, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(T.nilable(String)) }
      attr_reader :image_uri

      sig { params(image_uri: String).void }
      attr_writer :image_uri

      sig do
        params(name: String, uid: String, image_uri: String).returns(
          T.attached_class
        )
      end
      def self.new(name:, uid:, image_uri: nil)
      end

      sig { override.returns({ name: String, uid: String, image_uri: String }) }
      def to_hash
      end
    end
  end
end
