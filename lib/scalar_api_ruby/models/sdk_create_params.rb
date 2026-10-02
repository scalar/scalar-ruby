# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#create
    class SdkCreateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute api_uid
      #
      #   @return [String]
      required :api_uid, String, api_name: :apiUid

      # @!attribute languages
      #
      #   @return [Array<Symbol, Scalar::Models::SdkCreateParams::Language>]
      required :languages, -> { Scalar::Internal::Type::ArrayOf[enum: Scalar::SdkCreateParams::Language] }

      # @!attribute class_name
      #
      #   @return [String, nil]
      optional :class_name, String, api_name: :className

      # @!attribute config
      #
      #   @return [String, nil]
      optional :config, String

      # @!attribute slug
      #
      #   @return [String, nil]
      optional :slug, String

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(api_uid:, languages:, class_name: nil, config: nil, slug: nil, title: nil, request_options: {})
      #   @param api_uid [String]
      #   @param languages [Array<Symbol, Scalar::Models::SdkCreateParams::Language>]
      #   @param class_name [String]
      #   @param config [String]
      #   @param slug [String]
      #   @param title [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]

      module Language
        extend Scalar::Internal::Type::Enum

        TYPESCRIPT = :typescript
        PYTHON = :python
        CLI = :cli
        CSHARP = :csharp
        JAVA = :java
        RUBY = :ruby
        PHP = :php
        GO = :go
        RUST = :rust
        KOTLIN = :kotlin
        SWIFT = :swift
        CPP = :cpp
        DART = :dart

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
