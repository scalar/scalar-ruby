# frozen_string_literal: true

module Scalar
  module Internal
    module Type
      # @api private
      #
      # @generic Elem
      #
      # This module provides a base implementation for paginated responses in the SDK.
      module BasePage
        # rubocop:disable Lint/UnusedMethodArgument

        # @api public
        #
        # @return [Boolean]
        def next_page? = (raise NotImplementedError)

        # @api public
        #
        # @raise [Scalar::Errors::APIError]
        # @return [self]
        def next_page = (raise NotImplementedError)

        # @api public
        #
        # @param blk [Proc]
        #
        # @yieldparam [generic<Elem>]
        # @return [void]
        def auto_paging_each(&blk) = (raise NotImplementedError)

        # @return [Enumerable<generic<Elem>>]
        def to_enum = super(:auto_paging_each)

        alias_method :enum_for, :to_enum

        # @api private
        #
        # @param client [Scalar::Internal::Transport::BaseClient]
        # @param req [Hash{Symbol=>Object}]
        # @param headers [Hash{String=>String}]
        # @param page_data [Object]
        def initialize(client:, req:, headers:, page_data:)
          @client = client
          @req = req
          @model = req.fetch(:model)
          super()
        end

        # @api public
        #
        # The page's own fields, which is what ActiveSupport's `to_json` (and Rails' `render json:`)
        # serializes. Its default walks every instance variable, so a page would otherwise carry the
        # client along, its configuration and credentials included, or loop through the client's
        # resources back to the client until the stack runs out.
        #
        # @return [Hash{String=>Object}]
        def as_json(*)
          (instance_variables - %i[@client @req @model]).to_h do |name|
            [name.to_s.delete_prefix("@"), instance_variable_get(name)]
          end
        end

        # rubocop:enable Lint/UnusedMethodArgument
      end
    end
  end
end
