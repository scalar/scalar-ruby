# typed: strong

module Scalar
  module Models
    module Method
      extend Scalar::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Scalar::Method) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DELETE = T.let(:delete, Scalar::Method::TaggedSymbol)
      GET = T.let(:get, Scalar::Method::TaggedSymbol)
      HEAD = T.let(:head, Scalar::Method::TaggedSymbol)
      OPTIONS = T.let(:options, Scalar::Method::TaggedSymbol)
      PATCH = T.let(:patch, Scalar::Method::TaggedSymbol)
      POST = T.let(:post, Scalar::Method::TaggedSymbol)
      PUT = T.let(:put, Scalar::Method::TaggedSymbol)
      QUERY = T.let(:query, Scalar::Method::TaggedSymbol)
      TRACE = T.let(:trace, Scalar::Method::TaggedSymbol)

      sig { override.returns(T::Array[Scalar::Method::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
