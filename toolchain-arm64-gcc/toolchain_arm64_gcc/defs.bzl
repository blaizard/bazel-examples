load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def install_toolchain_arm64_gcc():

   http_archive(
      name = "arm64_gcc_linux_x86_64",
      urls = ["https://github.com/blaizard/bazel-examples/releases/download/tools/arm-gnu-toolchain-12.2.rel1-x86_64-aarch64-none-linux-gnu.tar.xz"],
      strip_prefix = "arm-gnu-toolchain-12.2.rel1-x86_64-aarch64-none-linux-gnu",
      sha256 = "6e8112dce0d4334d93bd3193815f16abe6a2dd5e7872697987a0b12308f876a4",
      build_file = "//toolchain_arm64_gcc:arm64_gcc_linux_x86_64.BUILD",
   )

   native.register_toolchains(
       "//toolchain_arm64_gcc:all",
   )
