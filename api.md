# Scalar Ruby API

Complete reference of every operation, grouped by resource. See [the README](./README.md) for usage and configuration.

## Contents

- [`Registry`](#registry)
  - [List all API Documents](#list-all-api-documents)
  - [List API Documents in a namespace](#list-api-documents-in-a-namespace)
  - [Create API Document](#create-api-document)
  - [Update API Document metadata](#update-api-document-metadata)
  - [Delete API Document](#delete-api-document)
  - [Get API Document](#get-api-document)
  - [Update API Document version](#update-api-document-version)
  - [Delete API Document version](#delete-api-document-version)
  - [Get API Document version metadata](#get-api-document-version-metadata)
  - [Create API Document version](#create-api-document-version)
  - [Add access group](#add-access-group)
  - [Remove access group](#remove-access-group)
- [`Schemas`](#schemas)
  - [List all shared components](#list-all-shared-components)
  - [Create a shared component](#create-a-shared-component)
  - [Update shared component metadata](#update-shared-component-metadata)
  - [Delete a shared component](#delete-a-shared-component)
  - [`Schemas Version`](#schemas-version)
    - [Get a shared component document](#get-a-shared-component-document)
    - [Delete a shared component version](#delete-a-shared-component-version)
    - [Create a shared component version](#create-a-shared-component-version)
  - [`Schemas AccessGroup`](#schemas-accessgroup)
    - [Add shared component access group](#add-shared-component-access-group)
    - [Remove shared component access group](#remove-shared-component-access-group)
- [`LoginPortals`](#loginportals)
  - [Get a login portal](#get-a-login-portal)
  - [Update portal metadata](#update-portal-metadata)
  - [Delete a login portal](#delete-a-login-portal)
  - [Create a portal](#create-a-portal)
  - [List all portals](#list-all-portals)
- [`AccessGroups`](#accessgroups)
  - [Create an access group](#create-an-access-group)
  - [Get an access group](#get-an-access-group)
  - [Update an access group](#update-an-access-group)
  - [Delete an access group](#delete-an-access-group)
  - [`AccessGroups Domains`](#accessgroups-domains)
    - [Add an allowed email domain](#add-an-allowed-email-domain)
    - [Remove an allowed email domain](#remove-an-allowed-email-domain)
- [`Rules`](#rules)
  - [List all rules](#list-all-rules)
  - [Create a rule](#create-a-rule)
  - [Update rule metadata](#update-rule-metadata)
  - [Delete a rule](#delete-a-rule)
  - [Get a rule](#get-a-rule)
  - [Add rule access group](#add-rule-access-group)
  - [Remove rule access group](#remove-rule-access-group)
- [`Themes`](#themes)
  - [List all themes](#list-all-themes)
  - [Create a theme](#create-a-theme)
  - [Update theme metadata](#update-theme-metadata)
  - [Update theme document](#update-theme-document)
  - [Delete a theme](#delete-a-theme)
  - [Get a theme](#get-a-theme)
- [`Teams`](#teams)
  - [List teams](#list-teams)
  - [`Teams Members`](#teams-members)
    - [List team members](#list-team-members)
    - [Change a member role](#change-a-member-role)
    - [Remove a member](#remove-a-member)
  - [`Teams Invites`](#teams-invites)
    - [Invite a member](#invite-a-member)
    - [Resend an invite](#resend-an-invite)
    - [Cancel an invite](#cancel-an-invite)
- [`ScalarDocs`](#scalardocs)
  - [List all projects](#list-all-projects)
  - [Create a project](#create-a-project)
  - [Publish a project](#publish-a-project)
  - [List all docs projects](#list-all-docs-projects)
  - [Create a docs project](#create-a-docs-project)
  - [Get a docs project](#get-a-docs-project)
  - [Update a docs project](#update-a-docs-project)
  - [Delete a docs project](#delete-a-docs-project)
  - [Publish a docs project](#publish-a-docs-project)
  - [Read the site config](#read-the-site-config)
  - [Write the site config](#write-the-site-config)
  - [Get the site domains](#get-the-site-domains)
  - [Check domain DNS](#check-domain-dns)
- [`Namespaces`](#namespaces)
  - [List namespaces](#list-namespaces)
- [`Authentication`](#authentication)
  - [Exchange token](#exchange-token)
  - [Get current user](#get-current-user)
- [`Sdks`](#sdks)
  - [List all SDKs](#list-all-sdks)
  - [Create an SDK](#create-an-sdk)
  - [Get an SDK](#get-an-sdk)
  - [Update an SDK](#update-an-sdk)
  - [Delete an SDK](#delete-an-sdk)
  - [Build an SDK](#build-an-sdk)
  - [`Sdks Versions`](#sdks-versions)
    - [Create an SDK version](#create-an-sdk-version)
    - [Delete an SDK version](#delete-an-sdk-version)
  - [`Sdks Repositories`](#sdks-repositories)
    - [Link a repository](#link-a-repository)
    - [Unlink a repository](#unlink-a-repository)
    - [Update publishing settings](#update-publishing-settings)
- [`Mcp`](#mcp)
  - [`Mcp Servers`](#mcp-servers)
    - [List all MCP servers](#list-all-mcp-servers)
    - [Create an MCP server](#create-an-mcp-server)
    - [Get an MCP server](#get-an-mcp-server)
    - [Update an MCP server](#update-an-mcp-server)
    - [Delete an MCP server](#delete-an-mcp-server)
    - [`Mcp Servers Installations`](#mcp-servers-installations)
      - [List installations](#list-installations)
      - [Create an installation](#create-an-installation)
      - [Get an installation](#get-an-installation)
      - [Update an installation](#update-an-installation)
      - [Delete an installation](#delete-an-installation)
      - [Add an access group](#add-an-access-group)
      - [Remove an access group](#remove-an-access-group)
- [`OAuth`](#oauth)
  - [Start an OAuth authorization](#start-an-oauth-authorization)
  - [Exchange a code or refresh token](#exchange-a-code-or-refresh-token)
  - [Revoke a refresh token](#revoke-a-refresh-token)
  - [Authorization server metadata](#authorization-server-metadata)

## Setup

```ruby
require "scalar_api_ruby"

client = Scalar::Client.new(
  bearer_auth: ENV["BEARER_AUTH"], # defaults to the BEARER_AUTH env var
)
```

## `Registry`

Registry

### List all API Documents

List all API documents across every namespace the caller can access.

| Direction | Type |
| --- | --- |
| Request | [`RegistryListAllAPIDocumentsParams`](././lib/scalar_api_ruby/models/registry_list_all_api_documents_params.rb) |
| Response | [`APIDocument`](././lib/scalar_api_ruby/models/api_document.rb) |

```ruby
response = client.registry.list_all_api_documents

puts response.inspect
```

### List API Documents in a namespace

List API documents in a namespace.

| Direction | Type |
| --- | --- |
| Request | [`RegistryListAPIDocumentsParams`](././lib/scalar_api_ruby/models/registry_list_api_documents_params.rb) |
| Response | [`APIDocument`](././lib/scalar_api_ruby/models/api_document.rb) |

```ruby
response = client.registry.list_api_documents("namespace")

puts response.inspect
```

### Create API Document

Create an API document.

| Direction | Type |
| --- | --- |
| Request | [`RegistryCreateAPIDocumentParams`](././lib/scalar_api_ruby/models/registry_create_api_document_params.rb) |
| Response | [`RegistryCreateAPIDocumentResponse`](././lib/scalar_api_ruby/models/registry_create_api_document_response.rb) |

```ruby
response = client.registry.create_api_document("namespace", { document: "", slug: "", title: "", version: "x", description: "", is_private: false, ruleset: "" })

puts response.inspect
```

### Update API Document metadata

Update metadata for an API document.

| Direction | Type |
| --- | --- |
| Request | [`RegistryUpdateAPIDocumentParams`](././lib/scalar_api_ruby/models/registry_update_api_document_params.rb) |

```ruby
response = client.registry.update_api_document("slug", { namespace: "namespace", description: "", is_private: false, ruleset: "", title: "" })

puts response.inspect
```

### Delete API Document

Delete an API document and all versions.

| Direction | Type |
| --- | --- |
| Request | [`RegistryDeleteAPIDocumentParams`](././lib/scalar_api_ruby/models/registry_delete_api_document_params.rb) |

```ruby
response = client.registry.delete_api_document("slug", { namespace: "namespace" })

puts response.inspect
```

### Get API Document

Get a specific API document version.

| Direction | Type |
| --- | --- |
| Request | [`RegistryRetrieveAPIDocumentVersionParams`](././lib/scalar_api_ruby/models/registry_retrieve_api_document_version_params.rb) |

```ruby
response = client.registry.retrieve_api_document_version("semver", { namespace: "namespace", slug: "slug" })

puts response.inspect
```

### Update API Document version

Update the registry file content for an API document version.

| Direction | Type |
| --- | --- |
| Request | [`RegistryUpdateAPIDocumentVersionParams`](././lib/scalar_api_ruby/models/registry_update_api_document_version_params.rb) |
| Response | [`RegistryUpdateAPIDocumentVersionResponse`](././lib/scalar_api_ruby/models/registry_update_api_document_version_response.rb) |

```ruby
response = client.registry.update_api_document_version("semver", { namespace: "namespace", slug: "slug", document: "" })

puts response.inspect
```

### Delete API Document version

Delete a specific API document version.

| Direction | Type |
| --- | --- |
| Request | [`RegistryDeleteAPIDocumentVersionParams`](././lib/scalar_api_ruby/models/registry_delete_api_document_version_params.rb) |

```ruby
response = client.registry.delete_api_document_version("semver", { namespace: "namespace", slug: "slug" })

puts response.inspect
```

### Get API Document version metadata

Get metadata (uid, content shas, version sha, tags) for a specific API document version.

| Direction | Type |
| --- | --- |
| Request | [`RegistryListAPIDocumentVersionMetadataParams`](././lib/scalar_api_ruby/models/registry_list_api_document_version_metadata_params.rb) |
| Response | [`ManagedDocVersion`](././lib/scalar_api_ruby/models/managed_doc_version.rb) |

```ruby
response = client.registry.list_api_document_version_metadata("semver", { namespace: "namespace", slug: "slug" })

puts response.inspect
```

### Create API Document version

Create a new API document version.

| Direction | Type |
| --- | --- |
| Request | [`RegistryCreateAPIDocumentVersionParams`](././lib/scalar_api_ruby/models/registry_create_api_document_version_params.rb) |
| Response | [`ManagedDocVersion`](././lib/scalar_api_ruby/models/managed_doc_version.rb) |

```ruby
response = client.registry.create_api_document_version("slug", { namespace: "namespace", document: "", version: "x", force: false })

puts response.inspect
```

### Add access group

Add an access group to an API document.

| Direction | Type |
| --- | --- |
| Request | [`RegistryCreateAPIDocumentAccessGroupParams`](././lib/scalar_api_ruby/models/registry_create_api_document_access_group_params.rb) |

```ruby
response = client.registry.create_api_document_access_group("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

### Remove access group

Remove an access group from an API document.

| Direction | Type |
| --- | --- |
| Request | [`RegistryDeleteAPIDocumentAccessGroupParams`](././lib/scalar_api_ruby/models/registry_delete_api_document_access_group_params.rb) |

```ruby
response = client.registry.delete_api_document_access_group("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

## `Schemas`

Schemas

### List all shared components

List schemas in a namespace.

| Direction | Type |
| --- | --- |
| Request | [`SchemaListParams`](././lib/scalar_api_ruby/models/schema_list_params.rb) |
| Response | [`Schema`](././lib/scalar_api_ruby/models/schema.rb) |

```ruby
response = client.schemas.list("namespace")

puts response.inspect
```

### Create a shared component

Create a schema in a namespace.

| Direction | Type |
| --- | --- |
| Request | [`SchemaCreateParams`](././lib/scalar_api_ruby/models/schema_create_params.rb) |
| Response | [`UID`](././lib/scalar_api_ruby/models/uid.rb) |

```ruby
response = client.schemas.create("namespace", { document: "", slug: "", title: "", version: "x", description: "", is_private: false })

puts response.inspect
```

### Update shared component metadata

Update schema metadata.

| Direction | Type |
| --- | --- |
| Request | [`SchemaUpdateParams`](././lib/scalar_api_ruby/models/schema_update_params.rb) |

```ruby
response = client.schemas.update("slug", { namespace: "namespace", description: "", is_private: false, title: "" })

puts response.inspect
```

### Delete a shared component

Delete a schema and all related versions.

| Direction | Type |
| --- | --- |
| Request | [`SchemaDeleteParams`](././lib/scalar_api_ruby/models/schema_delete_params.rb) |

```ruby
response = client.schemas.delete("slug", { namespace: "namespace" })

puts response.inspect
```

### `Schemas Version`

Schemas

#### Get a shared component document

Get a specific schema version document.

| Direction | Type |
| --- | --- |
| Request | [`VersionRetrieveParams`](././lib/scalar_api_ruby/models/schemas/version_retrieve_params.rb) |

```ruby
response = client.schemas.version.retrieve("semver", { namespace: "namespace", slug: "slug" })

puts response.inspect
```

#### Delete a shared component version

Delete a schema version.

| Direction | Type |
| --- | --- |
| Request | [`VersionDeleteParams`](././lib/scalar_api_ruby/models/schemas/version_delete_params.rb) |

```ruby
response = client.schemas.version.delete("semver", { namespace: "namespace", slug: "slug" })

puts response.inspect
```

#### Create a shared component version

Create a schema version.

| Direction | Type |
| --- | --- |
| Request | [`VersionCreateParams`](././lib/scalar_api_ruby/models/schemas/version_create_params.rb) |
| Response | [`Schemas::VersionCreateResponse`](././lib/scalar_api_ruby/models/schemas/version_create_response.rb) |

```ruby
response = client.schemas.version.create("slug", { namespace: "namespace", document: "", version: "x", force: false })

puts response.inspect
```

### `Schemas AccessGroup`

Schemas

#### Add shared component access group

Add an access group to a schema.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupCreateParams`](././lib/scalar_api_ruby/models/schemas/access_group_create_params.rb) |

```ruby
response = client.schemas.access_group.create("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

#### Remove shared component access group

Remove an access group from a schema.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupDeleteParams`](././lib/scalar_api_ruby/models/schemas/access_group_delete_params.rb) |

```ruby
response = client.schemas.access_group.delete("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

## `LoginPortals`

Login Portals

### Get a login portal

Get a login portal by slug.

| Direction | Type |
| --- | --- |
| Request | [`LoginPortalRetrieveParams`](././lib/scalar_api_ruby/models/login_portal_retrieve_params.rb) |
| Response | [`LoginPortalRetrieveResponse`](././lib/scalar_api_ruby/models/login_portal_retrieve_response.rb) |

```ruby
response = client.login_portals.retrieve("slug")

puts response.inspect
```

### Update portal metadata

Update metadata for a login portal.

| Direction | Type |
| --- | --- |
| Request | [`LoginPortalUpdateParams`](././lib/scalar_api_ruby/models/login_portal_update_params.rb) |

```ruby
response = client.login_portals.update("slug", { title: "" })

puts response.inspect
```

### Delete a login portal

Delete a login portal.

| Direction | Type |
| --- | --- |
| Request | [`LoginPortalDeleteParams`](././lib/scalar_api_ruby/models/login_portal_delete_params.rb) |

```ruby
response = client.login_portals.delete("slug")

puts response.inspect
```

### Create a portal

Create a login portal for the current team.

| Direction | Type |
| --- | --- |
| Request | [`LoginPortalCreateParams`](././lib/scalar_api_ruby/models/login_portal_create_params.rb) |
| Response | [`UID`](././lib/scalar_api_ruby/models/uid.rb) |

```ruby
response = client.login_portals.create({ email: { "logo" => "", "logoSize" => "100", "buttonText" => "Login", "message" => "Click to access private documentation hosted by scalar.com", "title" => "Private Docs", "mainColor" => "\#2a2f45", "mainBackground" => "\#f6f6f6", "cardColor" => "\#2a2f45", "cardBackground" => "\#fff", "buttonColor" => "\#fff", "buttonBackground" => "\#0f0f0f" }, page: { "title" => "Scalar Private Docs", "description" => "Login to access your documentation", "head" => "", "script" => "", "theme" => "", "companyName" => "", "logo" => "", "logoURL" => "", "favicon" => "", "termsLink" => "", "privacyLink" => "", "formTitle" => "Scalar Private Docs", "formDescription" => "Login to access your documentation", "formImage" => "" }, slug: "", title: "" })

puts response.inspect
```

### List all portals

List all login portals for the current team.

| Direction | Type |
| --- | --- |
| Request | [`LoginPortalListParams`](././lib/scalar_api_ruby/models/login_portal_list_params.rb) |
| Response | [`LoginPortal`](././lib/scalar_api_ruby/models/login_portal.rb) |

```ruby
response = client.login_portals.list

puts response.inspect
```

## `AccessGroups`

Access Groups

### Create an access group

Create a group for the current team. Requires docs edit permission and the access groups billing feature. Domains are exact email domains, without wildcards or implicit subdomain matching.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupCreateParams`](././lib/scalar_api_ruby/models/access_group_create_params.rb) |
| Response | [`AccessGroupCreateResponse`](././lib/scalar_api_ruby/models/access_group_create_response.rb) |

```ruby
response = client.access_groups.create({ allowed_domains: {  }, name: "", slug: "x" })

puts response.inspect
```

### Get an access group

Get a group and its email and domain allowlists by slug.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupRetrieveParams`](././lib/scalar_api_ruby/models/access_group_retrieve_params.rb) |
| Response | [`AccessGroupRetrieveResponse`](././lib/scalar_api_ruby/models/access_group_retrieve_response.rb) |

```ruby
response = client.access_groups.retrieve("slug")

puts response.inspect
```

### Update an access group

Update group metadata. Requires docs edit permission. After changing the slug, use the new slug in subsequent requests.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupUpdateParams`](././lib/scalar_api_ruby/models/access_group_update_params.rb) |

```ruby
response = client.access_groups.update("path_slug", { name: "", body_slug: "x" })

puts response.inspect
```

### Delete an access group

Delete a group and remove its project assignments. Requires docs edit permission.

| Direction | Type |
| --- | --- |
| Request | [`AccessGroupDeleteParams`](././lib/scalar_api_ruby/models/access_group_delete_params.rb) |

```ruby
response = client.access_groups.delete("slug")

puts response.inspect
```

### `AccessGroups Domains`

Access Groups

#### Add an allowed email domain

Allow an exact email domain in a group. Requires docs edit permission. A group supports up to 1000 domains.

| Direction | Type |
| --- | --- |
| Request | [`DomainCreateParams`](././lib/scalar_api_ruby/models/access_groups/domain_create_params.rb) |

```ruby
response = client.access_groups.domains.create("slug", { domain: "" })

puts response.inspect
```

#### Remove an allowed email domain

Remove an exact email domain from a group. Requires docs edit permission. Other allowed domains and emails are preserved.

| Direction | Type |
| --- | --- |
| Request | [`DomainDeleteParams`](././lib/scalar_api_ruby/models/access_groups/domain_delete_params.rb) |

```ruby
response = client.access_groups.domains.delete("slug", { domain: "" })

puts response.inspect
```

## `Rules`

Rules

### List all rules

List all rulesets in a namespace.

| Direction | Type |
| --- | --- |
| Request | [`RuleListRulesetsParams`](././lib/scalar_api_ruby/models/rule_list_rulesets_params.rb) |
| Response | [`Rule`](././lib/scalar_api_ruby/models/rule.rb) |

```ruby
response = client.rules.list_rulesets("namespace")

puts response.inspect
```

### Create a rule

Create a rule in a namespace.

| Direction | Type |
| --- | --- |
| Request | [`RuleCreateRulesetParams`](././lib/scalar_api_ruby/models/rule_create_ruleset_params.rb) |
| Response | [`UID`](././lib/scalar_api_ruby/models/uid.rb) |

```ruby
response = client.rules.create_ruleset("namespace", { document: "", slug: "", title: "", description: "", is_private: false })

puts response.inspect
```

### Update rule metadata

Update rule metadata by slug.

| Direction | Type |
| --- | --- |
| Request | [`RuleUpdateRulesetParams`](././lib/scalar_api_ruby/models/rule_update_ruleset_params.rb) |

```ruby
response = client.rules.update_ruleset("path_slug", { path_namespace: "path_namespace", description: "", is_private: false, body_namespace: "", body_slug: "", title: "" })

puts response.inspect
```

### Delete a rule

Delete a rule by slug.

| Direction | Type |
| --- | --- |
| Request | [`RuleDeleteRulesetParams`](././lib/scalar_api_ruby/models/rule_delete_ruleset_params.rb) |

```ruby
response = client.rules.delete_ruleset("slug", { namespace: "namespace" })

puts response.inspect
```

### Get a rule

Get a rule document by slug.

| Direction | Type |
| --- | --- |
| Request | [`RuleRetrieveRulesetDocumentParams`](././lib/scalar_api_ruby/models/rule_retrieve_ruleset_document_params.rb) |

```ruby
response = client.rules.retrieve_ruleset_document("slug", { namespace: "namespace" })

puts response.inspect
```

### Add rule access group

Grant an access group to a rule.

| Direction | Type |
| --- | --- |
| Request | [`RuleCreateRulesetAccessGroupParams`](././lib/scalar_api_ruby/models/rule_create_ruleset_access_group_params.rb) |

```ruby
response = client.rules.create_ruleset_access_group("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

### Remove rule access group

Remove an access group from a rule.

| Direction | Type |
| --- | --- |
| Request | [`RuleDeleteRulesetAccessGroupParams`](././lib/scalar_api_ruby/models/rule_delete_ruleset_access_group_params.rb) |

```ruby
response = client.rules.delete_ruleset_access_group("slug", { access_group_slug: "x", namespace: "namespace" })

puts response.inspect
```

## `Themes`

Themes

### List all themes

List all team themes.

| Direction | Type |
| --- | --- |
| Request | [`ThemeListParams`](././lib/scalar_api_ruby/models/theme_list_params.rb) |
| Response | [`Theme`](././lib/scalar_api_ruby/models/theme.rb) |

```ruby
response = client.themes.list

puts response.inspect
```

### Create a theme

Create a team theme.

| Direction | Type |
| --- | --- |
| Request | [`ThemeCreateParams`](././lib/scalar_api_ruby/models/theme_create_params.rb) |
| Response | [`UID`](././lib/scalar_api_ruby/models/uid.rb) |

```ruby
response = client.themes.create({ document: "", name: "", slug: "", description: "" })

puts response.inspect
```

### Update theme metadata

Update theme metadata.

| Direction | Type |
| --- | --- |
| Request | [`ThemeUpdateParams`](././lib/scalar_api_ruby/models/theme_update_params.rb) |

```ruby
response = client.themes.update("slug", { description: "", name: "" })

puts response.inspect
```

### Update theme document

Replace the theme document.

| Direction | Type |
| --- | --- |
| Request | [`ThemeReplaceDocumentParams`](././lib/scalar_api_ruby/models/theme_replace_document_params.rb) |

```ruby
response = client.themes.replace_document("slug", { document: "" })

puts response.inspect
```

### Delete a theme

Delete a theme by slug.

| Direction | Type |
| --- | --- |
| Request | [`ThemeDeleteParams`](././lib/scalar_api_ruby/models/theme_delete_params.rb) |

```ruby
response = client.themes.delete("slug")

puts response.inspect
```

### Get a theme

Get the theme document by slug.

| Direction | Type |
| --- | --- |
| Request | [`ThemeRetrieveParams`](././lib/scalar_api_ruby/models/theme_retrieve_params.rb) |

```ruby
response = client.themes.retrieve("slug")

puts response.inspect
```

## `Teams`

Teams

### List teams

List all available teams

| Direction | Type |
| --- | --- |
| Request | [`TeamListParams`](././lib/scalar_api_ruby/models/team_list_params.rb) |
| Response | [`Team`](././lib/scalar_api_ruby/models/team.rb) |

```ruby
response = client.teams.list

puts response.inspect
```

### `Teams Members`

Teams

#### List team members

List the members of the current team, along with the invites still outstanding.

| Direction | Type |
| --- | --- |
| Request | [`MemberListParams`](././lib/scalar_api_ruby/models/teams/member_list_params.rb) |
| Response | [`Teams::MemberListResponse`](././lib/scalar_api_ruby/models/teams/member_list_response.rb) |

```ruby
response = client.teams.members.list

puts response.inspect
```

#### Change a member role

Change what a member of the current team is allowed to do.

| Direction | Type |
| --- | --- |
| Request | [`MemberUpdateParams`](././lib/scalar_api_ruby/models/teams/member_update_params.rb) |

```ruby
response = client.teams.members.update("uidxx", { role: "owner" })

puts response.inspect
```

#### Remove a member

Remove someone from the current team.

| Direction | Type |
| --- | --- |
| Request | [`MemberDeleteParams`](././lib/scalar_api_ruby/models/teams/member_delete_params.rb) |

```ruby
response = client.teams.members.delete("uidxx")

puts response.inspect
```

### `Teams Invites`

Teams

#### Invite a member

Invite someone to the current team by email.

| Direction | Type |
| --- | --- |
| Request | [`InviteMemberParams`](././lib/scalar_api_ruby/models/teams/invite_member_params.rb) |

```ruby
response = client.teams.invites.member({ email: "user@example.com", role: "owner" })

puts response.inspect
```

#### Resend an invite

Send the invite email again.

| Direction | Type |
| --- | --- |
| Request | [`InviteResendParams`](././lib/scalar_api_ruby/models/teams/invite_resend_params.rb) |

```ruby
response = client.teams.invites.resend("uidxx")

puts response.inspect
```

#### Cancel an invite

Withdraw an invite that has not been accepted.

| Direction | Type |
| --- | --- |
| Request | [`InviteCancelParams`](././lib/scalar_api_ruby/models/teams/invite_cancel_params.rb) |

```ruby
response = client.teams.invites.cancel("uidxx")

puts response.inspect
```

## `ScalarDocs`

Scalar Docs

### List all projects

List all guide projects.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocListGuidesParams`](././lib/scalar_api_ruby/models/scalar_doc_list_guides_params.rb) |
| Response | [`GithubProject`](././lib/scalar_api_ruby/models/github_project.rb) |

```ruby
response = client.scalar_docs.list_guides

puts response.inspect
```

### Create a project

Create a guide project.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocCreateGuideParams`](././lib/scalar_api_ruby/models/scalar_doc_create_guide_params.rb) |
| Response | [`ScalarDocCreateGuideResponse`](././lib/scalar_api_ruby/models/scalar_doc_create_guide_response.rb) |

```ruby
response = client.scalar_docs.create_guide({ allowed_domains: [], allowed_users: [], is_private: false, name: "", slug: "x" })

puts response.inspect
```

### Publish a project

Start a new publish process.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocPublishGuideParams`](././lib/scalar_api_ruby/models/scalar_doc_publish_guide_params.rb) |
| Response | [`ScalarDocPublishGuideResponse`](././lib/scalar_api_ruby/models/scalar_doc_publish_guide_response.rb) |

```ruby
response = client.scalar_docs.publish_guide("slug")

puts response.inspect
```

### List all docs projects

List every docs project on the team.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocListProjectsParams`](././lib/scalar_api_ruby/models/scalar_doc_list_projects_params.rb) |
| Response | [`ScalarDocListProjectsResponse`](././lib/scalar_api_ruby/models/scalar_doc_list_projects_response.rb) |

```ruby
response = client.scalar_docs.list_projects

puts response.inspect
```

### Create a docs project

Create a docs project. Omit `provider` to have Scalar host the repository.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocCreateProjectParams`](././lib/scalar_api_ruby/models/scalar_doc_create_project_params.rb) |
| Response | [`DocsProject`](././lib/scalar_api_ruby/models/docs_project.rb) |

```ruby
response = client.scalar_docs.create_project({ name: "", provider: "forgejo", bitbucket_repository: { "workspaceUuid" => "", "repoUuid" => "" }, blank: false, github_repository: { "installationId" => 0, "repoId" => 0 }, is_private: false, slug: "x" })

puts response.inspect
```

### Get a docs project

Get a single docs project by its slug.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocRetrieveProjectParams`](././lib/scalar_api_ruby/models/scalar_doc_retrieve_project_params.rb) |
| Response | [`DocsProject`](././lib/scalar_api_ruby/models/docs_project.rb) |

```ruby
response = client.scalar_docs.retrieve_project("slug")

puts response.inspect
```

### Update a docs project

Update project settings. Set `isPrivate` with `accessGroups` to put the site behind a login.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocUpdateProjectParams`](././lib/scalar_api_ruby/models/scalar_doc_update_project_params.rb) |

```ruby
response = client.scalar_docs.update_project("slug", { access_groups: ["xxxxx"], active_theme_id: "xxxxx", agent_enabled: false, analytics_enabled: false, is_private: false, login_portal_uid: "xxxxx", name: "" })

puts response.inspect
```

### Delete a docs project

Delete a docs project, its deploys, its publish records and its cached builds.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocDeleteProjectParams`](././lib/scalar_api_ruby/models/scalar_doc_delete_project_params.rb) |

```ruby
response = client.scalar_docs.delete_project("slug")

puts response.inspect
```

### Publish a docs project

Start a build and deploy. The returned `publishUid` identifies the publish record.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocPublishProjectParams`](././lib/scalar_api_ruby/models/scalar_doc_publish_project_params.rb) |
| Response | [`ScalarDocPublishProjectResponse`](././lib/scalar_api_ruby/models/scalar_doc_publish_project_response.rb) |

```ruby
response = client.scalar_docs.publish_project("slug", { commit_sha: "", config_path: "", preview: false })

puts response.inspect
```

### Read the site config

Read `scalar.config.json` straight from the project repository, without cloning it. `baseToken` is the compare-and-swap handle for a later write.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocListProjectConfigParams`](././lib/scalar_api_ruby/models/scalar_doc_list_project_config_params.rb) |
| Response | [`ScalarDocListProjectConfigResponse`](././lib/scalar_api_ruby/models/scalar_doc_list_project_config_response.rb) |

```ruby
response = client.scalar_docs.list_project_config("slug")

puts response.inspect
```

### Write the site config

Commit `scalar.config.json` straight to the project repository. Pass the `baseToken` from the read this edit was based on; a conflict means the file moved underneath it.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocUpdateProjectConfigParams`](././lib/scalar_api_ruby/models/scalar_doc_update_project_config_params.rb) |
| Response | [`ScalarDocUpdateProjectConfigResponse`](././lib/scalar_api_ruby/models/scalar_doc_update_project_config_response.rb) |

```ruby
response = client.scalar_docs.update_project_config("slug", { content: "", base_token: "", message: "", path: "", ref: "" })

puts response.inspect
```

### Get the site domains

The domains the project serves on — the Scalar-hosted one and the custom one, when set.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocListProjectDomainParams`](././lib/scalar_api_ruby/models/scalar_doc_list_project_domain_params.rb) |
| Response | [`ScalarDocListProjectDomainResponse`](././lib/scalar_api_ruby/models/scalar_doc_list_project_domain_response.rb) |

```ruby
response = client.scalar_docs.list_project_domain("slug")

puts response.inspect
```

### Check domain DNS

Whether the project custom domain points at Scalar yet. `expected` is the CNAME record to create; `found` is what resolves today. A project with no custom domain reports `verified` with no expected record, because Scalar serves its own subdomain directly.

| Direction | Type |
| --- | --- |
| Request | [`ScalarDocListProjectDomainStatusParams`](././lib/scalar_api_ruby/models/scalar_doc_list_project_domain_status_params.rb) |
| Response | [`ScalarDocListProjectDomainStatusResponse`](././lib/scalar_api_ruby/models/scalar_doc_list_project_domain_status_response.rb) |

```ruby
response = client.scalar_docs.list_project_domain_status("slug")

puts response.inspect
```

## `Namespaces`

Namespaces

### List namespaces

Get all namespaces for the current team

| Direction | Type |
| --- | --- |
| Request | [`NamespaceListParams`](././lib/scalar_api_ruby/models/namespace_list_params.rb) |

```ruby
response = client.namespaces.list

puts response.inspect
```

## `Authentication`

Authentication

### Exchange token

Exchange an API key for an access token.

| Direction | Type |
| --- | --- |
| Request | [`AuthenticationExchangePersonalTokenParams`](././lib/scalar_api_ruby/models/authentication_exchange_personal_token_params.rb) |
| Response | [`AuthenticationExchangePersonalTokenResponse`](././lib/scalar_api_ruby/models/authentication_exchange_personal_token_response.rb) |

```ruby
response = client.authentication.exchange_personal_token({ personal_token: "" })

puts response.inspect
```

### Get current user

Get the authenticated user, including their available teams and theme.

| Direction | Type |
| --- | --- |
| Request | [`AuthenticationListCurrentUserParams`](././lib/scalar_api_ruby/models/authentication_list_current_user_params.rb) |
| Response | [`User`](././lib/scalar_api_ruby/models/user.rb) |

```ruby
response = client.authentication.list_current_user

puts response.inspect
```

## `Sdks`

SDKs

### List all SDKs

List every SDK on the team.

| Direction | Type |
| --- | --- |
| Request | [`SdkListParams`](././lib/scalar_api_ruby/models/sdk_list_params.rb) |
| Response | [`SdkListResponse`](././lib/scalar_api_ruby/models/sdk_list_response.rb) |

```ruby
response = client.sdks.list

puts response.inspect
```

### Create an SDK

Create an SDK from an API document, targeting one or more languages.

| Direction | Type |
| --- | --- |
| Request | [`SdkCreateParams`](././lib/scalar_api_ruby/models/sdk_create_params.rb) |
| Response | [`UID`](././lib/scalar_api_ruby/models/uid.rb) |

```ruby
response = client.sdks.create({ api_uid: "xxxxx", languages: ["typescript"], class_name: "", config: "", slug: "x", title: "" })

puts response.inspect
```

### Get an SDK

Get a single SDK by its uid.

| Direction | Type |
| --- | --- |
| Request | [`SdkRetrieveParams`](././lib/scalar_api_ruby/models/sdk_retrieve_params.rb) |
| Response | [`Sdk`](././lib/scalar_api_ruby/models/sdk.rb) |

```ruby
response = client.sdks.retrieve("uidxx")

puts response.inspect
```

### Update an SDK

Update SDK metadata, its linked API, or its config.

| Direction | Type |
| --- | --- |
| Request | [`SdkUpdateParams`](././lib/scalar_api_ruby/models/sdk_update_params.rb) |

```ruby
response = client.sdks.update("uidxx", { api_uid: "xxxxx", api_version: "", config: "", is_private: false, slug: "x", title: "" })

puts response.inspect
```

### Delete an SDK

Delete an SDK and every version it holds.

| Direction | Type |
| --- | --- |
| Request | [`SdkDeleteParams`](././lib/scalar_api_ruby/models/sdk_delete_params.rb) |

```ruby
response = client.sdks.delete("uidxx")

puts response.inspect
```

### Build an SDK

Start a build. Omit `version` to build the current work — the open draft, else the latest version — and the resolved version comes back in the response.

| Direction | Type |
| --- | --- |
| Request | [`SdkBuildParams`](././lib/scalar_api_ruby/models/sdk_build_params.rb) |
| Response | [`SdkBuildResponse`](././lib/scalar_api_ruby/models/sdk_build_response.rb) |

```ruby
response = client.sdks.build("uidxx", { languages: ["typescript"], version: "" })

puts response.inspect
```

### `Sdks Versions`

SDKs

#### Create an SDK version

Create a new SDK version against a specific API version.

| Direction | Type |
| --- | --- |
| Request | [`VersionCreateParams`](././lib/scalar_api_ruby/models/sdks/version_create_params.rb) |

```ruby
response = client.sdks.versions.create("uidxx", { api_version: "", version: "" })

puts response.inspect
```

#### Delete an SDK version

Permanently delete one version of an SDK.

| Direction | Type |
| --- | --- |
| Request | [`VersionDeleteParams`](././lib/scalar_api_ruby/models/sdks/version_delete_params.rb) |

```ruby
response = client.sdks.versions.delete("version", { uid: "uidxx" })

puts response.inspect
```

### `Sdks Repositories`

SDKs

#### Link a repository

Link one language target to a GitHub repository, so builds sync there.

| Direction | Type |
| --- | --- |
| Request | [`RepositoryLinkParams`](././lib/scalar_api_ruby/models/sdks/repository_link_params.rb) |
| Response | [`Sdks::RepositoryLinkResponse`](././lib/scalar_api_ruby/models/sdks/repository_link_response.rb) |

```ruby
response = client.sdks.repositories.link("uidxx", { base_branch: "", language: "typescript", repository_id: 0, prerelease_type: "" })

puts response.inspect
```

#### Unlink a repository

Unlink one language target from its repository.

| Direction | Type |
| --- | --- |
| Request | [`RepositoryUnlinkParams`](././lib/scalar_api_ruby/models/sdks/repository_unlink_params.rb) |

```ruby
response = client.sdks.repositories.unlink("typescript", { uid: "uidxx" })

puts response.inspect
```

#### Update publishing settings

Toggle publish-on-merge and the release settings for a linked target.

| Direction | Type |
| --- | --- |
| Request | [`RepositoryUpdatePublishingParams`](././lib/scalar_api_ruby/models/sdks/repository_update_publishing_params.rb) |

```ruby
response = client.sdks.repositories.update_publishing("typescript", { uid: "uidxx", publish_on_merge: false, access: "public", auth_method: "oidc", tag: "" })

puts response.inspect
```

## `Mcp`

### `Mcp Servers`

MCP

#### List all MCP servers

List every MCP server on the team.

| Direction | Type |
| --- | --- |
| Request | [`ServerListParams`](././lib/scalar_api_ruby/models/mcp/server_list_params.rb) |
| Response | [`Mcp::McpServer`](././lib/scalar_api_ruby/models/mcp/mcp_server.rb) |

```ruby
response = client.mcp.servers.list

puts response.inspect
```

#### Create an MCP server

Create an MCP server over one or more API document versions. The response carries the server and its first installation.

| Direction | Type |
| --- | --- |
| Request | [`ServerCreateParams`](././lib/scalar_api_ruby/models/mcp/server_create_params.rb) |
| Response | [`Mcp::ServerCreateResponse`](././lib/scalar_api_ruby/models/mcp/server_create_response.rb) |

```ruby
response = client.mcp.servers.create({ name: "x", project_uids: [""], slug: "x", version_uids: [""] })

puts response.inspect
```

#### Get an MCP server

Get a single MCP server by its id.

| Direction | Type |
| --- | --- |
| Request | [`ServerRetrieveParams`](././lib/scalar_api_ruby/models/mcp/server_retrieve_params.rb) |
| Response | [`Mcp::McpServer`](././lib/scalar_api_ruby/models/mcp/mcp_server.rb) |

```ruby
response = client.mcp.servers.retrieve("id")

puts response.inspect
```

#### Update an MCP server

Update MCP server metadata and which tools it exposes.

| Direction | Type |
| --- | --- |
| Request | [`ServerUpdateParams`](././lib/scalar_api_ruby/models/mcp/server_update_params.rb) |
| Response | [`Mcp::McpServer`](././lib/scalar_api_ruby/models/mcp/mcp_server.rb) |

```ruby
response = client.mcp.servers.update("id", { auto_add_operations: false, docs_pages: [""], name: "x", operations: [""], slug: "x" })

puts response.inspect
```

#### Delete an MCP server

Delete an MCP server and every installation it serves.

| Direction | Type |
| --- | --- |
| Request | [`ServerDeleteParams`](././lib/scalar_api_ruby/models/mcp/server_delete_params.rb) |

```ruby
response = client.mcp.servers.delete("id")

puts response.inspect
```

#### `Mcp Servers Installations`

MCP

##### List installations

List the installations of an MCP server. An installation is what an MCP client connects to.

| Direction | Type |
| --- | --- |
| Request | [`InstallationListParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_list_params.rb) |
| Response | [`Mcp::Servers::McpInstallationListItem`](././lib/scalar_api_ruby/models/mcp/servers/mcp_installation_list_item.rb) |

```ruby
response = client.mcp.servers.installations.list("id")

puts response.inspect
```

##### Create an installation

Create an installation of an MCP server. `documentAuth` holds the credentials the server presents to the upstream API and is never returned.

| Direction | Type |
| --- | --- |
| Request | [`InstallationCreateParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_create_params.rb) |
| Response | [`Mcp::McpInstallation`](././lib/scalar_api_ruby/models/mcp/mcp_installation.rb) |

```ruby
response = client.mcp.servers.installations.create("id", { document_auth: {  }, name: "x", slug: "x" })

puts response.inspect
```

##### Get an installation

Get a single installation of an MCP server.

| Direction | Type |
| --- | --- |
| Request | [`InstallationRetrieveParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_retrieve_params.rb) |
| Response | [`Mcp::McpInstallation`](././lib/scalar_api_ruby/models/mcp/mcp_installation.rb) |

```ruby
response = client.mcp.servers.installations.retrieve("installation_id", { id: "id" })

puts response.inspect
```

##### Update an installation

Update an installation. Set `isPrivate` and add access groups to put it behind a login.

| Direction | Type |
| --- | --- |
| Request | [`InstallationUpdateParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_update_params.rb) |
| Response | [`Mcp::McpInstallation`](././lib/scalar_api_ruby/models/mcp/mcp_installation.rb) |

```ruby
response = client.mcp.servers.installations.update("installation_id", { id: "id", document_auth: {  }, is_private: false, login_portal_uid: "", mcp_version: "", name: "x", slug: "x" })

puts response.inspect
```

##### Delete an installation

Delete an installation of an MCP server.

| Direction | Type |
| --- | --- |
| Request | [`InstallationDeleteParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_delete_params.rb) |

```ruby
response = client.mcp.servers.installations.delete("installation_id", { id: "id" })

puts response.inspect
```

##### Add an access group

Let an access group reach a private installation.

| Direction | Type |
| --- | --- |
| Request | [`InstallationCreateAccessGroupParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_create_access_group_params.rb) |

```ruby
response = client.mcp.servers.installations.create_access_group("installation_id", { id: "id", access_group_uid: "xxxxx" })

puts response.inspect
```

##### Remove an access group

Stop an access group reaching a private installation.

| Direction | Type |
| --- | --- |
| Request | [`InstallationDeleteAccessGroupParams`](././lib/scalar_api_ruby/models/mcp/servers/installation_delete_access_group_params.rb) |

```ruby
response = client.mcp.servers.installations.delete_access_group("installation_id", { id: "id", access_group_uid: "xxxxx" })

puts response.inspect
```

## `OAuth`

OAuth

### Start an OAuth authorization

Authorization endpoint (RFC 6749 §4.1.1 with PKCE, RFC 7636). Validates the request and sends the user to the Scalar dashboard to approve it; the user returns to `redirect_uri` with a `code` to exchange at the token endpoint. Only `response_type=code` with `code_challenge_method=S256` is supported.

| Direction | Type |
| --- | --- |
| Request | [`OAuthOauthAuthorizeParams`](././lib/scalar_api_ruby/models/o_auth_oauth_authorize_params.rb) |

```ruby
response = client.o_auth.oauth_authorize

puts response.inspect
```

### Exchange a code or refresh token

Token endpoint (RFC 6749 §4.1.3 and §6). Accepts `application/x-www-form-urlencoded`. Confidential clients authenticate with HTTP Basic or `client_secret` in the body; public clients send `client_id` alone. The `authorization_code` grant needs `code`, `redirect_uri` and `code_verifier`; the `refresh_token` grant needs `refresh_token` and may narrow `scope`.

| Direction | Type |
| --- | --- |
| Request | [`OAuthOauthTokenParams`](././lib/scalar_api_ruby/models/o_auth_oauth_token_params.rb) |
| Response | [`OAuthOauthTokenResponse`](././lib/scalar_api_ruby/models/o_auth_oauth_token_response.rb) |

```ruby
response = client.o_auth.oauth_token({ grant_type: "", client_id: "", client_secret: "", code: "", code_verifier: "", redirect_uri: "", refresh_token: "", scope: "" })

puts response.inspect
```

### Revoke a refresh token

Revocation endpoint (RFC 7009). Revokes the refresh token and every token issued alongside it. The client authenticates as it does at the token endpoint. Responds 200 whether or not the token was live, as the RFC requires.

| Direction | Type |
| --- | --- |
| Request | [`OAuthOauthRevokeParams`](././lib/scalar_api_ruby/models/o_auth_oauth_revoke_params.rb) |
| Response | [`OauthError`](././lib/scalar_api_ruby/models/oauth_error.rb) |

```ruby
response = client.o_auth.oauth_revoke({ token: "", client_id: "", client_secret: "", token_type_hint: "" })

puts response.inspect
```

### Authorization server metadata

Discovery document for OAuth clients (RFC 8414): where the endpoints are and what they support.

| Direction | Type |
| --- | --- |
| Request | [`OAuthOauthAuthorizationServerMetadataParams`](././lib/scalar_api_ruby/models/o_auth_oauth_authorization_server_metadata_params.rb) |
| Response | [`OauthAuthorizationServerMetadata`](././lib/scalar_api_ruby/models/oauth_authorization_server_metadata.rb) |

```ruby
response = client.o_auth.oauth_authorization_server_metadata

puts response.inspect
```
