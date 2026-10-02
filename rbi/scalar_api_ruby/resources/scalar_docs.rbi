# typed: strong

module Scalar
  module Resources
    # Scalar Docs
    class ScalarDocs
      # Create a guide project.
      sig do
        params(
          allowed_domains: T::Array[String],
          allowed_users: T::Array[String],
          is_private: T::Boolean,
          name: String,
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocCreateGuideResponse)
      end
      def create_guide(
        allowed_domains:,
        allowed_users:,
        is_private:,
        name:,
        slug: nil,
        request_options: {}
      )
      end

      # Create a docs project. Omit `provider` to have Scalar host the repository.
      sig do
        params(
          name: String,
          provider: Scalar::ScalarDocCreateProjectParams::Provider::OrSymbol,
          bitbucket_repository:
            Scalar::ScalarDocCreateProjectParams::BitbucketRepository::OrHash,
          blank: T::Boolean,
          github_repository:
            Scalar::ScalarDocCreateProjectParams::GithubRepository::OrHash,
          is_private: T::Boolean,
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::DocsProject)
      end
      def create_project(
        name:,
        provider:,
        bitbucket_repository: nil,
        blank: nil,
        github_repository: nil,
        is_private: nil,
        slug: nil,
        request_options: {}
      )
      end

      # Delete a docs project, its deploys, its publish records and its cached builds.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def delete_project(slug, request_options: {})
      end

      # List all guide projects.
      sig do
        params(request_options: Scalar::RequestOptions::OrHash).returns(
          T::Array[Scalar::GithubProject]
        )
      end
      def list_guides(request_options: {})
      end

      # Read `scalar.config.json` straight from the project repository, without cloning
      # it. `baseToken` is the compare-and-swap handle for a later write.
      sig do
        params(
          slug: String,
          ref: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocListProjectConfigResponse)
      end
      def list_project_config(slug, ref: nil, request_options: {})
      end

      # The domains the project serves on — the Scalar-hosted one and the custom one,
      # when set.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocListProjectDomainResponse)
      end
      def list_project_domain(slug, request_options: {})
      end

      # Whether the project custom domain points at Scalar yet. `expected` is the CNAME
      # record to create; `found` is what resolves today. A project with no custom
      # domain reports `verified` with no expected record, because Scalar serves its own
      # subdomain directly.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocListProjectDomainStatusResponse)
      end
      def list_project_domain_status(slug, request_options: {})
      end

      # List every docs project on the team.
      sig do
        params(
          limit: Integer,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocListProjectsResponse)
      end
      def list_projects(limit: nil, request_options: {})
      end

      # Start a new publish process.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocPublishGuideResponse)
      end
      def publish_guide(slug, request_options: {})
      end

      # Start a build and deploy. The returned `publishUid` identifies the publish
      # record.
      sig do
        params(
          slug: String,
          commit_sha: String,
          config_path: String,
          preview: T::Boolean,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocPublishProjectResponse)
      end
      def publish_project(
        slug,
        commit_sha: nil,
        config_path: nil,
        preview: nil,
        request_options: {}
      )
      end

      # Get a single docs project by its slug.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::DocsProject)
      end
      def retrieve_project(slug, request_options: {})
      end

      # Update project settings. Set `isPrivate` with `accessGroups` to put the site
      # behind a login.
      sig do
        params(
          slug: String,
          access_groups: T::Array[String],
          active_theme_id: String,
          agent_enabled: T::Boolean,
          analytics_enabled: T::Boolean,
          is_private: T::Boolean,
          login_portal_uid:
            Scalar::ScalarDocUpdateProjectParams::LoginPortalUID::Variants,
          name: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def update_project(
        slug,
        access_groups: nil,
        active_theme_id: nil,
        agent_enabled: nil,
        analytics_enabled: nil,
        is_private: nil,
        login_portal_uid: nil,
        name: nil,
        request_options: {}
      )
      end

      # Commit `scalar.config.json` straight to the project repository. Pass the
      # `baseToken` from the read this edit was based on; a conflict means the file
      # moved underneath it.
      sig do
        params(
          slug: String,
          content: String,
          base_token: String,
          message: String,
          path: String,
          ref: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::ScalarDocUpdateProjectConfigResponse)
      end
      def update_project_config(
        slug,
        content:,
        base_token: nil,
        message: nil,
        path: nil,
        ref: nil,
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
