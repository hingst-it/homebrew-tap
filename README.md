# Hingst IT Homebrew tap

Install [Panko](https://github.com/hingst-it/panko) on macOS or Linux:

```sh
brew install hingst-it/tap/panko
panko --version
```

The formula installs the `panko` and `panko-admin` release binaries for AMD64 or
ARM64, with pinned SHA-256 checksums. No compiler or Apple developer account is
required. Installing the CLI does not deploy the Kubernetes services; follow
the [quickstart](https://github.com/hingst-it/panko/blob/v0.0.1/docs/quickstart.md)
to run the complete local lab.

## Updating the formula

Panko's release workflow publishes `panko.rb` alongside its binary archives and
`SHA256SUMS`. Copy that formula to `Formula/panko.rb`, inspect the version, URLs,
and checksums, run `brew audit --strict Formula/panko.rb` and `brew test panko`,
then commit it here. Updating this tap is a separate step because the main
repository's `GITHUB_TOKEN` does not have write access to this repository.

Licensed under Apache-2.0.
