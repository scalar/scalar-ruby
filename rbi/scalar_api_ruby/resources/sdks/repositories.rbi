# typed: strong

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Repositories
        # Link an existing language target to a GitHub repository accessible through the
        # Scalar GitHub App. Requires team edit permission and a paid SDK automation plan.
        # Native delivery writes at the repository root; use a separate repository for
        # each target. Directory fields are unsupported. Linking can immediately sync the
        # current build under automatic promotion; pass promotion: manual to hold it back.
        # If GitHub access is missing, connect GitHub and grant the App access in Scalar
        # Dashboard before retrying.
        sig do
          params(
            uid: String,
            base_branch: String,
            language: Scalar::Sdks::RepositoryLinkParams::Language::OrSymbol,
            repository_id: Integer,
            prerelease_type: String,
            promotion: Scalar::Sdks::RepositoryLinkParams::Promotion::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(Scalar::Models::Sdks::RepositoryLinkResponse)
        end
        def link(
          uid,
          # Release promote branch. Platform-managed branches such as scalar-next and
          # scalar-generated are reserved.
          base_branch:,
          language:,
          repository_id:,
          prerelease_type: nil,
          # Controls when a build becomes current and syncs to GitHub. Omit to preserve the
          # saved policy.
          promotion: nil,
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
            artifact_id: String,
            auth_method:
              Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod::OrSymbol,
            cask: T::Boolean,
            registry: String,
            replace_formula: T::Boolean,
            tag: String,
            tap_repo: String,
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
          artifact_id: nil,
          # Body param
          auth_method: nil,
          # Body param
          cask: nil,
          # Body param
          registry: nil,
          # Body param
          replace_formula: nil,
          # Body param
          tag: nil,
          # Body param
          tap_repo: nil,
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
