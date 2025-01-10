# README.md

This is the website of meditation / mindfulness teacher / facilitator
Doron Tal, located at `satimetta.org`, used to support ongoing instruction.

## Development notes

* The initial website was based on the scaffolded Svelte demo app, as
  created by running `npx sv create satimetta.org`, and then choosing
  "SvelteKit demo" - the Svelte showcase app

* Using a workflow for automatic github pages deploy, as
  described here: 
  ```
  https://www.captaincodeman.com/deploy-a-sveltekit-app-to-github-pages
  ```
* [CHANGELOG.md](CHANGELOG.md) contains notes related to the various git tags

### Deploy

* Deploy with the command `yarn run deploy`

### How to bump the version number and create a new git tag

* Decide on the next version number (e.g. 1.0.0 - look in [VERSION](VERSION))
* Update the [CHANGELOG.md](CHANGELOG.md) to reflect changes to the current
  version, which is the one that has an incomplete date at the top of the file
  (a date filled with question marks, e.g. "(????-??-??)")
  * Copy the entry with incomplete dates to duplicate it
  * Leave the top version as it was, but fill out the second from top entry
    with all information pertaining to the version you're tagging
* Run [./scripts/git_tag](./scripts/git_tag) - it will use the **current**
  [VERSION](VERSION)!
* Change [VERSION](VERSION) to the next version, using
  [./scripts/set_version](./scripts/set_version) - set the last number of
  the version string to 0, because the next step will bump it up
* Run [./scripts/git_save](./scripts/git_save)
