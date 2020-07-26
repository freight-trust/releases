<p align="center">
<img src="https://raw.githubusercontent.com/freight-trust/branding/master/images/bundle/optimized_github_repo_card.png">
</p>
<br>
<!-- Badges Start -->
<p align="center">
<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/freighttrustnet?label=%40FreightTrustNet&style=social">
<img alt="Open Source License" src="https://img.shields.io/github/license/freight-trust/releases?style=social">
<!-- Badges End -->

# Freight Trust Releases

- [Freight Trust Releases](#freight-trust-releases)
  - [GPG Key](#gpg-key)
    - [Offical](#offical)
    - [Versioning](#versioning)
      - [Regular](#regular)
      - [LTS](#lts)
    - [Licenses](#licenses)
  - [Convention](#convention)
    - [Releases](#releases)
      - [Distribution Releases](#distribution-releases)
      - [Releases](#releases-1)
  - [License](#license)

## GPG Key

[Root GPG Key, Find Details in the freight-trust/pki releases](https://github.com/freight-trust/pki/releases/tag/2020_07)

### Offical

sam bacha <sam@freighttrust.com> (361D5A506F6EB43E)

### Versioning

#### Regular

^(0|[1-9]\d\*)\.(0|[1-9]\d\*)\.(0|[1-9]\d\*)(-(0|[1-9]\d\*|\d\*[a-zA-Z-][0-9a-za-z-]\*)(\.(0|[1-9]\d\*|\d\*[a-zA-Z-][0-9a-za-z-]\_))\_)?(\+[0-9a-zA-Z-]+(\.[0-9a-zA-Z-]+)\\*)?\$

#### LTS

(?nx)^ (?<Major>0|[1-9]\d\*)\. (?<Minor>0|[1-9]\d\*)\. (?<Patch>0|[1-9]\d\*)
(?<PreReleaseTagWithSeparator> -(?<PreReleaseTag>
((0|[1-9]\d\*|\d\*[A-Z-a-z-][\da-za-z-]\*))(\.(0|[1-9]\d\*|\d\*[A-Za-z-][\da-za-z-]\_))\_
) )? (?<BuildMetadataTagWithSeparator>
\+(?<BuildMetadataTag>[\dA-Za-z-]+(\.[\dA-Za-z-]\_)\_) )?\$

### Licenses

Licenses for Software are included, any license files contained in this
repository is for files native to the repository for the usage of releasing,
versioning and distributing.

## Convention

We use different `git commit` styles for different purposes namely: <br />

`angular`: primary style for codebase commits <br />

`ember`: primary style for infrastructure commits <br />

`atom`: primary style for docs, branding, non "programatic" repo's (i.e. for
branding, community repos, etc) <br />

### Releases

 <br />
 **Please utilize the `.hbs` templates in the root directory**
 <br />

#### Distribution Releases

> note: `generate-relese-notes.sh` file is up to you

```json
{
  "github": {
    "release": true,
    "assets": ["dist/*.zip"],
    "releaseNotes": "generate-release-notes.sh ${latestVersion} ${version}"
  }
}
```

#### Releases

```json
{
  "hooks": {
    "after:init": ["npm run lint", "npm test"]
  },
  "git": {
    "requireUpstream": false
  },
  "github": {
    "release": true
  }
}
```

## License

(C) 2020 - FreightTrust and Clearing Corporation MIT License
