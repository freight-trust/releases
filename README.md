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

## GPG Key 
[Root GPG Key, Find Details in the freight-trust/pki releases](https://github.com/freight-trust/pki/releases/tag/2020_07)

### Offical
sam bacha <sam@freighttrust.com> (361D5A506F6EB43E)


## Tooling

### Autolog

`npx auto-changelog --stdout --commit-limit false -u --template https://raw.githubusercontent.com/freight-trust/releases/master/changelog.hbs | tee -a autolog`

### Versioning 


#### Regular 
^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(-(0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(\.(0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*)?(\+[0-9a-zA-Z-]+(\.[0-9a-zA-Z-]+)*)?$


#### LTS

(?nx)^
(?<Major>0|[1-9]\d*)\.
(?<Minor>0|[1-9]\d*)\.
(?<Patch>0|[1-9]\d*)
(?<PreReleaseTagWithSeparator>
  -(?<PreReleaseTag>
    ((0|[1-9]\d*|\d*[A-Z-a-z-][\dA-Za-z-]*))(\.(0|[1-9]\d*|\d*[A-Za-z-][\dA-Za-z-]*))*
   )
)?
(?<BuildMetadataTagWithSeparator>
  \+(?<BuildMetadataTag>[\dA-Za-z-]+(\.[\dA-Za-z-]*)*)
)?$

### Licenses 

Licenses for Software are included, any license files contained in this repository is for files native to the repository for the usage of releasing, versioning and distributing. 
