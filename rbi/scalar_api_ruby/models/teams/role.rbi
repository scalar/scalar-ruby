# typed: strong

module Scalar
  module Models
    module Teams
      module Role
        extend Scalar::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Scalar::Teams::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OWNER = T.let(:owner, Scalar::Teams::Role::TaggedSymbol)
        ADMIN = T.let(:admin, Scalar::Teams::Role::TaggedSymbol)
        EDITOR = T.let(:editor, Scalar::Teams::Role::TaggedSymbol)
        VIEWER = T.let(:viewer, Scalar::Teams::Role::TaggedSymbol)

        sig { override.returns(T::Array[Scalar::Teams::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
