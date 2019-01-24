<!-- markdownlint-disable MD033 -->
<p align="center">
    <svg space="preserve" style="margin-left:-9px;margin-top:-7px;" version="1.1" viewBox="0 0 419.3 482.7" width="300px" xmlns="http://www.w3.org/2000/svg"><g><polygon fill="#00A552" points="210,228.7 416.4,121.1 210,478.7"></polygon><polygon fill="#009345" points="210,228.7 3.6,121.1 210,478.7"></polygon><polygon fill="#01DF6B" points="416.4,121.1 3.6,121.1 210,228.7"></polygon><polygon fill="#01DF6B" points="3.6,361 211.2,4.1 416.4,361"></polygon><polygon fill="#00A552" points="210,228.7 310.3,176.4 210,361"></polygon><polygon fill="#009345" points="110.6,176.9 210,361 210,228.7"></polygon></g></svg>
</p>

<p align="center">
    <a href="https://travis-ci.com/markuswntr/igdb">
        <img src="https://travis-ci.com/markuswntr/igdb.svg?branch=master" alt="Build Status" />
    </a>
    <a href="https://www.codacy.com/app/markuswntr/igdb">
        <img src="https://api.codacy.com/project/badge/Grade/d17a7b58072f420ea719f27c94957cc0" alt="Codacy" />
    </a>
    <a href="https://github.com/markuswntr/igdb/releases">
        <img src="https://img.shields.io/github/release/markuswntr/igdb.svg" alt="Release Version" />
    </a>
    <a href="https://swift.org">
        <img src="https://img.shields.io/badge/Swift-4.2-red.svg" alt="Swift Version" />
    </a>
    <a href="https://twitter.com/markuswntr">
        <img src="https://img.shields.io/badge/contact-@markuswntr-5AA9E7.svg" alt="Twitter: @markuswntr" />
    </a>
</p>
<!-- markdownlint-enable MD033 -->

#

A wrapper around the [IGDB](https://igdb.com) API in pure Swift.

## Installation

### Swift Package Manager

If you want to use Apicalypse in a project that uses [SPM](https://swift.org/package-manager/),
it's as simple as adding a `dependencies` clause to your `Package.swift`:

``` swift
dependencies: [
    .package(url: "https://github.com/markuswntr/igdb.git", from: "1.0.0")
]
```

> Then `import IGDB` wherever necessary.

## Hope you enjoy IGDB

For more updates on IGDB, and my other open source projects,
follow me on Twitter: [@markuswntr](https://www.twitter.com/markuswntr)

Also make sure to check out [Apicalypse](https://github.com/markuswntr/apicalypse), that is heavily used within this module and lets you write queries against the API.
