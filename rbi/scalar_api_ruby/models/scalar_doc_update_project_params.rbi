# typed: strong

module Scalar
  module Models
    class ScalarDocUpdateProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::ScalarDocUpdateProjectParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :access_groups

      sig { params(access_groups: T::Array[String]).void }
      attr_writer :access_groups

      sig { returns(T.nilable(String)) }
      attr_reader :active_theme_id

      sig { params(active_theme_id: String).void }
      attr_writer :active_theme_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :agent_enabled

      sig { params(agent_enabled: T::Boolean).void }
      attr_writer :agent_enabled

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :analytics_enabled

      sig { params(analytics_enabled: T::Boolean).void }
      attr_writer :analytics_enabled

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_private

      sig { params(is_private: T::Boolean).void }
      attr_writer :is_private

      sig { returns(T.nilable(T.any(String, Symbol))) }
      attr_reader :login_portal_uid

      sig do
        params(
          login_portal_uid:
            Scalar::ScalarDocUpdateProjectParams::LoginPortalUID::Variants
        ).void
      end
      attr_writer :login_portal_uid

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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
        ).returns(T.attached_class)
      end
      def self.new(
        slug:,
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

      sig do
        override.returns(
          {
            slug: String,
            access_groups: T::Array[String],
            active_theme_id: String,
            agent_enabled: T::Boolean,
            analytics_enabled: T::Boolean,
            is_private: T::Boolean,
            login_portal_uid: T.any(String, Symbol),
            name: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end

      module LoginPortalUID
        extend Scalar::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Symbol) }

        sig do
          override.returns(
            T::Array[
              Scalar::ScalarDocUpdateProjectParams::LoginPortalUID::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
