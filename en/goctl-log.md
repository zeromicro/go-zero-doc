# Goctl Log
> [!TIP]
> This document is machine-translated by Google. If you find grammatical and semantic errors, and the document description is not clear, please [PR](doc-contibute.md)

## v1.1.4（2021-01-18）
* Use g4 instead of traditional api grammar parsing
* Optimize the analysis of error line and column accurate positioning
* Fix bugs

## v1.1.0（2020-12-09）
* Add api plugin (`goctl api plugin`) support
* Add `goctl kube deploy` command support

## v1.0.29（2020-11-28）
* Model increases interface generation, which is convenient for mock
* Optimize the file naming parameter `--style` command

## v1.0.28（2020-11-19）
* Support global error customization `httpx.Error(...)`
* The `struct` keyword in api syntax is optional
* `goctl rpc proto` adds `--style` command
* `goctl` bug fix

## v1.0.27（2020-11-14）
* Optimize api parsing
* Added single line comment (`//`) support for api syntax
* API support import

## v1.0.26（2020-11-08）
* Add `dockerfile` generation command `goctl docker` support
* Optimize `goctl`


> [!TIP]
> This section only updates the development log after 2020-11-08. For the older development logs, see [release](https://github.com/tal-tech/go-zero/releases)