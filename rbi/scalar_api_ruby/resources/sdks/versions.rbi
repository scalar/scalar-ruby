# typed: strong

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Versions
        # Create a version label from a version of the SDK's API document and start its
        # build. The label is the document version, and it becomes `latestVersion` when it
        # is the highest.
        sig do
          params(
            uid: String,
            version: String,
            api_version: T.anything,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def create(
          uid,
          version:,
          # Removed. A request that carries it is refused with a 400.
          api_version: nil,
          request_options: {}
        )
        end

        # Permanently delete one version label of an SDK and its builds. A label that is
        # the current build of any language promoting manually is refused with 409 and
        # nothing is deleted; promote or roll back to another build for that language
        # first. Each other language whose current build was of that label moves to the
        # active build of the highest remaining label that has one for the language, and
        # has no current build when none has; `currentVersion` shows the result. Each
        # language that moved to another build syncs it to its linked repository unless
        # the repository already holds it. When it was `latestVersion`, that tag moves to
        # the highest remaining label holding an active build. An SDK's last version
        # cannot be deleted.
        sig do
          params(
            version: String,
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(version, uid:, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
