"Define linter aspects"

load("@aspect_rules_lint//lint:lint_test.bzl", "lint_test")
# Swift linting is a deferred best-effort: aspect_rules_lint does not ship a
# SwiftLint aspect yet, so no lint aspect is wired here. `swift-format`/SwiftFormat
# still provides formatting via //tools/format. Add a SwiftLint aspect here if and
# when rules_lint supports it.
