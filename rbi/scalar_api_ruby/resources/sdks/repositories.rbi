# typed: strong

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Repositories
        # Link one language target to a GitHub repository, so builds sync there.
        sig do
          params(
            uid: String,
            base_branch: String,
            language: Scalar::Sdks::RepositoryLinkParams::Language::OrSymbol,
            repository_id: Integer,
            prerelease_type: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(Scalar::Models::Sdks::RepositoryLinkResponse)
        end
        def link(
          uid,
          base_branch:,
          language:,
          repository_id:,
          prerelease_type: nil,
          request_options: {}
        )
        end

        # Unlink one language target from its repository.
        sig do
          params(
            language: Scalar::Sdks::RepositoryUnlinkParams::Language::OrSymbol,
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def unlink(language, uid:, request_options: {})
        end

        # Toggle publish-on-merge and the release settings for a linked target.
        sig do
          params(
            language:
              Scalar::Sdks::RepositoryUpdatePublishingParams::Language::OrSymbol,
            uid: String,
            publish_on_merge: T::Boolean,
            access:
              Scalar::Sdks::RepositoryUpdatePublishingParams::Access::OrSymbol,
            auth_method:
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol,
            tag: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def update_publishing(
          # Path param
          language,
          # Path param
          uid:,
          # Body param
          publish_on_merge:,
          # Body param
          access: nil,
          # Body param
          auth_method: nil,
          # Body param
          tag: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
