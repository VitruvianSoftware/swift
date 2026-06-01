"""BUILD definition for the formatter binary

This is in its own package because it has so many loading-time symbols,
we don't want to trigger eager fetches of these for builds that don't want to run format.
"""

load("@aspect_rules_lint//format:defs.bzl", "format_multirun")

# gazelle:exclude
package(default_visibility = ["//:__subpackages__"])

# SwiftFormat ships separate prebuilt binaries per OS; select the right one.
# The @swiftformat / @swiftformat_mac repos come from the rules_lint format
# tools extension declared in MODULE.bazel.
alias(
    name = "swiftformat",
    actual = select({
        "@bazel_tools//src/conditions:linux": "@swiftformat",
        "@bazel_tools//src/conditions:darwin": "@swiftformat_mac",
    }),
)

format_multirun(
    name = "format",
    starlark = "@buildifier_prebuilt//:buildifier",
    swift = ":swiftformat",
)
