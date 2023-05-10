load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def install_toolchain_arm64_gcc_docker():

   native.register_toolchains(
       "//toolchain_arm64_gcc_docker:arm64_gcc_linux_x86_64",
   )

   native.register_execution_platforms(
      "//toolchain_arm64_gcc_docker:execution_platform",
   )
