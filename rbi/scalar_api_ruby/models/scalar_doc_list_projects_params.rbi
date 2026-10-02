# typed: strong

module Scalar
  module Models
    class ScalarDocListProjectsParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::ScalarDocListProjectsParams, Scalar::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          limit: Integer,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(limit: nil, request_options: {})
      end

      sig do
        override.returns(
          { limit: Integer, request_options: Scalar::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
