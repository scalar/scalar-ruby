# typed: strong

module Scalar
  module Models
    class SdkBuildResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::Models::SdkBuildResponse, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :version

      sig { params(version: String).returns(T.attached_class) }
      def self.new(version:)
      end

      sig { override.returns({ version: String }) }
      def to_hash
      end
    end
  end
end
