# Releases 

## Convention 

We use different `git commit` styles for different purposes namely:  <br />

`angular`: primary style for codebase commits 
 <br />

`ember`: primary style for infrastructure commits
 <br />

`atom`: primary style for docs, branding, non "programatic" repo's (i.e. for branding, community repos, etc)
 <br />


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
(C) 2020 - FreightTrust and Clearing Corporation 
MIT License 