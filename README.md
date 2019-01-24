<!-- markdownlint-disable MD002 MD033 MD041 -->
<h1 align="center">
  <a href="https://github.com/markuswntr/igdb">
    <img src="https://www.igdb.com/mstile-310x310.png" width="300" max-width="50%" alt="IGDB" />
  </a>
  <br>IGDB: Video Game Database API<br>
</h1>

<h4 align="center">
    A wrapper around the <a href="https://www.igdb.com/api">IGDB API</a> in pure Swift.
</h4>

<p align="center">
    <a href="https://github.com/markuswntr/igdb/releases">
        <img src="https://img.shields.io/github/release/markuswntr/igdb.svg" alt="Release Version" />
    </a>
    <a href="https://travis-ci.com/markuswntr/igdb">
        <img src="https://travis-ci.com/markuswntr/igdb.svg?branch=master" alt="Build Status" />
    </a>
    <a href="https://www.codacy.com/app/markuswntr/igdb">
        <img src="https://api.codacy.com/project/badge/Grade/d17a7b58072f420ea719f27c94957cc0" alt="Codacy" />
    </a>
    <a href="https://swift.org">
        <img src="https://img.shields.io/badge/Swift-4.2-red.svg" alt="Swift Version" />
    </a>
    <a href="https://twitter.com/markuswntr">
        <img src="https://img.shields.io/badge/contact-@markuswntr-5AA9E7.svg" alt="Twitter: @markuswntr" />
    </a>
</p>
<!-- markdownlint-enable MD033 -->

## Installation

### Swift Package Manager

If you want to use Apicalypse in a project that uses [SPM](https://swift.org/package-manager/),
it's as simple as adding a `dependencies` clause to your `Package.swift`:

``` swift
dependencies: [
    .package(url: "https://github.com/markuswntr/igdb.git", .branch("1.0.0"))
]
```

> Then `import IGDB` wherever necessary.

## Hope you enjoy IGDB

For more updates on IGDB, and my other open source projects,
follow me on Twitter: [@markuswntr](https://www.twitter.com/markuswntr)

Also make sure to check out [Apicalypse](https://github.com/markuswntr/apicalypse), that is heavily used within this module and lets you write queries against the API.
