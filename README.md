Attempting to create a minimal POC that works with [aspect-build/rules_ts](https://github.com/aspect-build/rules_ts).

The goal here is to:
1. Explore how it interacts with import cycles
2. Get `bazel run blah` to execute the compiled (transpiled?) Javascript.
3. Get `bazel test blah` to execute the compiled Javascript, preferably with Mocha.
4. Verify that all of the above are done by modifying only the absolute-necessary-to-rebuild/rerun files.
