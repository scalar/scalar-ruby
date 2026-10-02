# typed: strong

module Scalar
  module Models
    module OAuthOauthTokenResponse
      extend Scalar::Internal::Type::Union

      Variants = T.type_alias { T.any(Scalar::OauthToken, Scalar::OauthError) }

      sig do
        override.returns(
          T::Array[Scalar::Models::OAuthOauthTokenResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
