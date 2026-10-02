# typed: strong

module Scalar
  module Models
    module OauthScope
      extend Scalar::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Scalar::OauthScope) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      READ = T.let(:read, Scalar::OauthScope::TaggedSymbol)
      WRITE = T.let(:write, Scalar::OauthScope::TaggedSymbol)
      ADMIN = T.let(:admin, Scalar::OauthScope::TaggedSymbol)

      sig { override.returns(T::Array[Scalar::OauthScope::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
