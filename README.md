# Bazel Rules for VUnit

[![Build Status](https://github.com/filmil/bazel_rules_vunit/actions/workflows/build.yml/badge.svg)](https://github.com/filmil/bazel_rules_vunit/actions/workflows/build.yml)
[![Publish BCR Status](https://github.com/filmil/bazel_rules_vunit/actions/workflows/publish-bcr.yml/badge.svg)](https://github.com/filmil/bazel_rules_vunit/actions/workflows/publish-bcr.yml)
[![Publish Status](https://github.com/filmil/bazel_rules_vunit/actions/workflows/publish.yml/badge.svg)](https://github.com/filmil/bazel_rules_vunit/actions/workflows/publish.yml)
[![Tag and Release Status](https://github.com/filmil/bazel_rules_vunit/actions/workflows/tag-and-release.yml/badge.svg)](https://github.com/filmil/bazel_rules_vunit/actions/workflows/tag-and-release.yml)

This repository provides Bazel rules for integrating the [VUnit](https://vunit.github.io/) VHDL testing framework into your Bazel projects.

## Installation

(TODO)
```
bazel_dep(name = "bazel_rules_vunit", version = "0.0.0")

# Required to be able to build the underlying NVC tooling.
bazel_dep(name = "toolchains_llvm", version = "1.5.0", dev_dependency = True)
llvm = use_extension("@toolchains_llvm//toolchain/extensions:llvm.bzl", "llvm", dev_dependency = True)
llvm.toolchain(
    name = "llvm_toolchain",
    llvm_version = "20.1.4",
)
use_repo(llvm, "llvm_toolchain")
register_toolchains("@llvm_toolchain//:all", dev_dependency = True)

```

## Usage

See [integration](integration/) for usage examples.

