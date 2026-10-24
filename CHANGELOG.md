# Changelog

## [0.3.0](https://github.com/scalar/scalar-ruby/compare/v0.2.0...v0.3.0) (2026-10-24)


### ⚠ BREAKING CHANGES

* **api:** Added required property `github_project.chatInsightsEnabled`.
* **api:** 3 breaking changes to the SDK surface.
    - Property `api_document.tags` type changed from `string` to `unknown`.
    - Property `github_project.accessGroups` type changed from `string` to `unknown`.
    - Property `docs_project.accessGroups` type changed from `string` to `unknown`.
* **api:** 8 breaking changes to the SDK surface.
    - Removed body field `autoAddOperations` from `mcp.servers.update`.
    - Removed body field `isPrivate` from `mcp.servers.installations.update`.
    - Removed body field `loginPortalUid` from `mcp.servers.installations.update`.
    - Removed body field `documentAuth` from `mcp.servers.installations.update`.
    - Removed operation `mcp.servers.installations.create` (`POST /v1/mcp/servers/{id}/installations`).
    - Removed required property `mcp_server.autoAddOperations`.
    - Removed required property `mcp_installation.isPrivate`.
    - Removed required property `mcp_installation_list_item.isPrivate`.

### Features

* **api:** add property github_project.chatInsightsEnabled ([1acf1ad](https://github.com/scalar/scalar-ruby/commit/1acf1adc46ed34f558192d2f390a91c65e81b002))
* **api:** update property api_document.tags (+3 more changes) ([cc500dd](https://github.com/scalar/scalar-ruby/commit/cc500dd9100311ce4fc7c9bc3324b376660b0dd2))
* **api:** update SDK surface (14 changes) ([637c4b1](https://github.com/scalar/scalar-ruby/commit/637c4b1ec12d07468051b91ce9d3e2f2a7a65cd9))
* **api:** update SDK surface (4 changes) ([3d717a5](https://github.com/scalar/scalar-ruby/commit/3d717a527d015d58902aa90c23acf4b9a2ef676c))


### Chores

* **api:** regenerate SDK ([5834062](https://github.com/scalar/scalar-ruby/commit/58340624e19ec64e59b11426a79d5ff2eedf96fc))
* **api:** regenerate SDK ([ef2020a](https://github.com/scalar/scalar-ruby/commit/ef2020a155d2a459c1d5681803fb7ae27e32d6ab))
* **api:** update generated SDK content ([c0790e6](https://github.com/scalar/scalar-ruby/commit/c0790e6e73dcebdfe0b1e74fbe618e19a610dfc7))

## [0.2.0](https://github.com/scalar/scalar-ruby/compare/v0.1.1...v0.2.0) (2026-10-09)


### ⚠ BREAKING CHANGES

* **api:** Schema `method` changed from `enum(delete | get | head | …)` to `string`.
* **api:** Configuration of `oauth2` auth scheme `OAuth2` changed.
* **api:** 10 breaking changes to the SDK surface.
    - Removed operation `oAuth.oauthAuthorize` (`GET /v1/oauth/authorize`).
    - Removed operation `oAuth.oauthToken` (`POST /v1/oauth/token`).
    - Removed operation `oAuth.oauthRevoke` (`POST /v1/oauth/revoke`).
    - Removed operation `oAuth.oauthAuthorizationServerMetadata` (`GET /.well-known/oauth-authorization-server`).
    - Removed schema `oauth_token`.
    - Removed schema `oauth_scope`.
    - Removed schema `oauth_error`.
    - Removed schema `oauth_token_request`.
    - Removed schema `oauth_revoke_request`.
    - Removed schema `oauth_authorization_server_metadata`.
* **api:** 4 breaking changes to the SDK surface.
    - Property `api_document.tags` type changed from `unknown` to `string`.
    - Property `managed_doc_version.tools` type changed from `Array<object>` to `Array<object>`.
    - Property `github_project.accessGroups` type changed from `unknown` to `string`.
    - Property `docs_project.accessGroups` type changed from `unknown` to `string`.
* **api:** 10 breaking changes to the SDK surface.
    - Removed body field `lastKnownVersionSha` from `registry.updateApiDocumentVersion`.
    - Removed body field `lastKnownVersionSha` from `registry.createApiDocumentVersion`.
    - Response of `schemas.version.create` changed from `uid` to `none`.
    - Schema `slug` shape changed.
    - Schema `namespace` shape changed.
    - Added required property `managed_doc_version.endpointCount`.
    - Removed optional property `managed_doc_version.versionSha`.
    - Schema `method` shape changed.
    - Added required property `github_project.userInfoHookUrl`.
    - Added required property `github_project.analyticsEnabled`.

### Features

* **api:** add operation accessGroups.create (+66 more changes) ([6808193](https://github.com/scalar/scalar-ruby/commit/68081934feaa706b74cfd4902e57ae856d8c0f45))
* **api:** remove operation oAuth.oauthAuthorize (+9 more changes) ([04d9ebb](https://github.com/scalar/scalar-ruby/commit/04d9ebb2a30e0d09d3e236668e2d7c9d27d3a15b))
* **api:** update auth scheme OAuth2 (+1 more change) ([b012cf9](https://github.com/scalar/scalar-ruby/commit/b012cf99690a404e82e60132f32288c7bdee0a81))
* **api:** update property api_document.tags (+3 more changes) ([21db53f](https://github.com/scalar/scalar-ruby/commit/21db53f16e8ed92be07de3f544e780bb44373872))
* **api:** update schema method ([a767517](https://github.com/scalar/scalar-ruby/commit/a767517d8290873f7946c6dc8ac5c1e926109625))
* **api:** update SDK surface (15 changes) ([ec912cc](https://github.com/scalar/scalar-ruby/commit/ec912cc28d1b0a39bda9e8a398a9b59b928f031c))

## [0.1.1](https://github.com/scalar/scalar-ruby/compare/v0.1.0...v0.1.1) (2026-09-15)


### Chores

* **api:** update generated SDK content ([265a91c](https://github.com/scalar/scalar-ruby/commit/265a91c45c46999893dd90c3b7c736d24fda6f17))

## [0.1.0](https://github.com/scalar/scalar-ruby/compare/v0.1.0...v0.1.0) (2026-09-15)


### Features

* **api:** initial SDK generation ([3705a19](https://github.com/scalar/scalar-ruby/commit/3705a1992d1113eec29d913fe5ec75a5d7a90cc2))


### Chores

* **api:** update generated SDK content ([a70a032](https://github.com/scalar/scalar-ruby/commit/a70a03253d7c20539e95e15ddff2afae406fd54a))
* release 0.1.0 ([f6687ac](https://github.com/scalar/scalar-ruby/commit/f6687ac4abb4f42fef1155f2841ab14092e17f77))
* release 0.1.0 ([4c5bbef](https://github.com/scalar/scalar-ruby/commit/4c5bbef2f59ca56f350d087d139244e4022d2bb3))
