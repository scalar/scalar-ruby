# typed: strong

module Scalar
  module Models
    module Sdks
      class RepositoryLinkResponse < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::Sdks::RepositoryLinkResponse,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :branch

        sig { returns(String) }
        attr_accessor :repo

        sig { params(branch: String, repo: String).returns(T.attached_class) }
        def self.new(branch:, repo:)
        end

        sig { override.returns({ branch: String, repo: String }) }
        def to_hash
        end
      end
    end
  end
end
