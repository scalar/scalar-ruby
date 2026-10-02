# frozen_string_literal: true

module Scalar
  class Client < Scalar::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :bearer_auth

    # @return [String, nil]
    attr_reader :o_auth2

    # Registry
    # @return [Scalar::Resources::Registry]
    attr_reader :registry

    # Schemas
    # @return [Scalar::Resources::Schemas]
    attr_reader :schemas

    # Login Portals
    # @return [Scalar::Resources::LoginPortals]
    attr_reader :login_portals

    # Access Groups
    # @return [Scalar::Resources::AccessGroups]
    attr_reader :access_groups

    # Rules
    # @return [Scalar::Resources::Rules]
    attr_reader :rules

    # Themes
    # @return [Scalar::Resources::Themes]
    attr_reader :themes

    # Teams
    # @return [Scalar::Resources::Teams]
    attr_reader :teams

    # Scalar Docs
    # @return [Scalar::Resources::ScalarDocs]
    attr_reader :scalar_docs

    # Namespaces
    # @return [Scalar::Resources::Namespaces]
    attr_reader :namespaces

    # Authentication
    # @return [Scalar::Resources::Authentication]
    attr_reader :authentication

    # SDKs
    # @return [Scalar::Resources::Sdks]
    attr_reader :sdks

    # @return [Scalar::Resources::Mcp]
    attr_reader :mcp

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {**auth_bearer_auth, **auth_o_auth2}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_bearer_auth
      {"authorization" => "Bearer #{@bearer_auth}"}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_o_auth2
      {"authorization" => "Bearer #{@o_auth2}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_auth [String, nil] Defaults to `ENV["BEARER_AUTH"]`
    #
    # @param o_auth2 [String, nil] Defaults to `ENV["SCALAR_OAUTH_TOKEN"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["SCALAR_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer_auth: ENV["BEARER_AUTH"],
      o_auth2: ENV["SCALAR_OAUTH_TOKEN"],
      base_url: ENV["SCALAR_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://access.scalar.com"

      headers = {}
      custom_headers_env = ENV["SCALAR_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env
          .split("\n")
          .each do |line|
            colon = line.index(":")
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip unless colon.nil?
          end
        headers = parsed.merge(headers)
      end

      @bearer_auth = bearer_auth&.to_s
      @o_auth2 = o_auth2&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @registry = Scalar::Resources::Registry.new(client: self)
      @schemas = Scalar::Resources::Schemas.new(client: self)
      @login_portals = Scalar::Resources::LoginPortals.new(client: self)
      @access_groups = Scalar::Resources::AccessGroups.new(client: self)
      @rules = Scalar::Resources::Rules.new(client: self)
      @themes = Scalar::Resources::Themes.new(client: self)
      @teams = Scalar::Resources::Teams.new(client: self)
      @scalar_docs = Scalar::Resources::ScalarDocs.new(client: self)
      @namespaces = Scalar::Resources::Namespaces.new(client: self)
      @authentication = Scalar::Resources::Authentication.new(client: self)
      @sdks = Scalar::Resources::Sdks.new(client: self)
      @mcp = Scalar::Resources::Mcp.new(client: self)
    end
  end
end
