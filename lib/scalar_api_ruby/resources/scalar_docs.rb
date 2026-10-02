# frozen_string_literal: true

module Scalar
  module Resources
    # Scalar Docs
    class ScalarDocs
      # Create a guide project.
      #
      # @overload create_guide(allowed_domains:, allowed_users:, is_private:, name:, slug: nil, request_options: {})
      #
      # @param allowed_domains [Array<String>]
      # @param allowed_users [Array<String>]
      # @param is_private [Boolean]
      # @param name [String]
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocCreateGuideResponse]
      #
      # @see Scalar::Models::ScalarDocCreateGuideParams
      def create_guide(params)
        parsed, options = Scalar::ScalarDocCreateGuideParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/guides",
          body: parsed,
          model: Scalar::Models::ScalarDocCreateGuideResponse,
          options: options
        )
      end

      # Create a docs project. Omit `provider` to have Scalar host the repository.
      #
      # @overload create_project(name:, provider:, bitbucket_repository: nil, blank: nil, github_repository: nil, is_private: nil, slug: nil, request_options: {})
      #
      # @param name [String]
      # @param provider [Symbol, Scalar::Models::ScalarDocCreateProjectParams::Provider]
      # @param bitbucket_repository [Scalar::Models::ScalarDocCreateProjectParams::BitbucketRepository]
      # @param blank [Boolean]
      # @param github_repository [Scalar::Models::ScalarDocCreateProjectParams::GithubRepository]
      # @param is_private [Boolean]
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::DocsProject]
      #
      # @see Scalar::Models::ScalarDocCreateProjectParams
      def create_project(params)
        parsed, options = Scalar::ScalarDocCreateProjectParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/docs",
          body: parsed,
          model: Scalar::DocsProject,
          options: options
        )
      end

      # Delete a docs project, its deploys, its publish records and its cached builds.
      #
      # @overload delete_project(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::ScalarDocDeleteProjectParams
      def delete_project(slug, params = {})
        @client.request(
          method: :delete,
          path: ["v1/docs/%1$s", slug],
          model: Scalar::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # List all guide projects.
      #
      # @overload list_guides(request_options: {})
      #
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Scalar::Models::GithubProject>]
      #
      # @see Scalar::Models::ScalarDocListGuidesParams
      def list_guides(params = {})
        @client.request(
          method: :get,
          path: "v1/guides",
          model: Scalar::Internal::Type::ArrayOf[Scalar::GithubProject],
          options: params[:request_options]
        )
      end

      # Read `scalar.config.json` straight from the project repository, without cloning
      # it. `baseToken` is the compare-and-swap handle for a later write.
      #
      # @overload list_project_config(slug, ref: nil, request_options: {})
      #
      # @param slug [String]
      # @param ref [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocListProjectConfigResponse]
      #
      # @see Scalar::Models::ScalarDocListProjectConfigParams
      def list_project_config(slug, params = {})
        parsed, options = Scalar::ScalarDocListProjectConfigParams.dump_request(params)
        query = Scalar::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/docs/%1$s/config", slug],
          query: query,
          model: Scalar::Models::ScalarDocListProjectConfigResponse,
          options: options
        )
      end

      # The domains the project serves on — the Scalar-hosted one and the custom one,
      # when set.
      #
      # @overload list_project_domain(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocListProjectDomainResponse]
      #
      # @see Scalar::Models::ScalarDocListProjectDomainParams
      def list_project_domain(slug, params = {})
        @client.request(
          method: :get,
          path: ["v1/docs/%1$s/domain", slug],
          model: Scalar::Models::ScalarDocListProjectDomainResponse,
          options: params[:request_options]
        )
      end

      # Whether the project custom domain points at Scalar yet. `expected` is the CNAME
      # record to create; `found` is what resolves today. A project with no custom
      # domain reports `verified` with no expected record, because Scalar serves its own
      # subdomain directly.
      #
      # @overload list_project_domain_status(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocListProjectDomainStatusResponse]
      #
      # @see Scalar::Models::ScalarDocListProjectDomainStatusParams
      def list_project_domain_status(slug, params = {})
        @client.request(
          method: :get,
          path: ["v1/docs/%1$s/domain/status", slug],
          model: Scalar::Models::ScalarDocListProjectDomainStatusResponse,
          options: params[:request_options]
        )
      end

      # List every docs project on the team.
      #
      # @overload list_projects(limit: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocListProjectsResponse]
      #
      # @see Scalar::Models::ScalarDocListProjectsParams
      def list_projects(params = {})
        parsed, options = Scalar::ScalarDocListProjectsParams.dump_request(params)
        query = Scalar::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/docs",
          query: query,
          model: Scalar::Models::ScalarDocListProjectsResponse,
          options: options
        )
      end

      # Start a new publish process.
      #
      # @overload publish_guide(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocPublishGuideResponse]
      #
      # @see Scalar::Models::ScalarDocPublishGuideParams
      def publish_guide(slug, params = {})
        @client.request(
          method: :post,
          path: ["v1/guides/%1$s/publish", slug],
          model: Scalar::Models::ScalarDocPublishGuideResponse,
          options: params[:request_options]
        )
      end

      # Start a build and deploy. The returned `publishUid` identifies the publish
      # record.
      #
      # @overload publish_project(slug, commit_sha: nil, config_path: nil, preview: nil, request_options: {})
      #
      # @param slug [String]
      # @param commit_sha [String]
      # @param config_path [String]
      # @param preview [Boolean]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocPublishProjectResponse]
      #
      # @see Scalar::Models::ScalarDocPublishProjectParams
      def publish_project(slug, params = {})
        parsed, options = Scalar::ScalarDocPublishProjectParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/docs/%1$s/publish", slug],
          body: parsed,
          model: Scalar::Models::ScalarDocPublishProjectResponse,
          options: options
        )
      end

      # Get a single docs project by its slug.
      #
      # @overload retrieve_project(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::DocsProject]
      #
      # @see Scalar::Models::ScalarDocRetrieveProjectParams
      def retrieve_project(slug, params = {})
        @client.request(
          method: :get,
          path: ["v1/docs/%1$s", slug],
          model: Scalar::DocsProject,
          options: params[:request_options]
        )
      end

      # Update project settings. Set `isPrivate` with `accessGroups` to put the site
      # behind a login.
      #
      # @overload update_project(slug, access_groups: nil, active_theme_id: nil, agent_enabled: nil, analytics_enabled: nil, is_private: nil, login_portal_uid: nil, name: nil, request_options: {})
      #
      # @param slug [String]
      # @param access_groups [Array<String>]
      # @param active_theme_id [String]
      # @param agent_enabled [Boolean]
      # @param analytics_enabled [Boolean]
      # @param is_private [Boolean]
      # @param login_portal_uid [String, Symbol]
      # @param name [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::ScalarDocUpdateProjectParams
      def update_project(slug, params = {})
        parsed, options = Scalar::ScalarDocUpdateProjectParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/docs/%1$s", slug],
          body: parsed,
          model: Scalar::Internal::Type::Unknown,
          options: options
        )
      end

      # Commit `scalar.config.json` straight to the project repository. Pass the
      # `baseToken` from the read this edit was based on; a conflict means the file
      # moved underneath it.
      #
      # @overload update_project_config(slug, content:, base_token: nil, message: nil, path: nil, ref: nil, request_options: {})
      #
      # @param slug [String]
      # @param content [String]
      # @param base_token [String]
      # @param message [String]
      # @param path [String]
      # @param ref [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::ScalarDocUpdateProjectConfigResponse]
      #
      # @see Scalar::Models::ScalarDocUpdateProjectConfigParams
      def update_project_config(slug, params)
        parsed, options = Scalar::ScalarDocUpdateProjectConfigParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/docs/%1$s/config", slug],
          body: parsed,
          model: Scalar::Models::ScalarDocUpdateProjectConfigResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
