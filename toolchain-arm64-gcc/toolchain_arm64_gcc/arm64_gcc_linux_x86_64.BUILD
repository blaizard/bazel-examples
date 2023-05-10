load("@bazel_tools//tools/cpp:unix_cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
	name = "cc_toolchain_config",
	cpu = "arm64",
	compiler = "gcc",
	toolchain_identifier = "arm64_gcc",
	host_system_name = "local",
	target_system_name = "local",
	target_libc = "unknown",
	abi_version = "unknown",
	abi_libc_version = "unknown",
	tool_paths = {
		"gcc": "bin/aarch64-none-linux-gnu-g++",
		"cpp": "bin/aarch64-none-linux-gnu-cpp",
		"ar": "bin/aarch64-none-linux-gnu-ar",
		"nm": "bin/aarch64-none-linux-gnu-nm",
		"ld": "bin/aarch64-none-linux-gnu-ld",
		"as": "bin/aarch64-none-linux-gnu-as",
		"objcopy": "bin/aarch64-none-linux-gnu-objcopy",
		"objdump": "bin/aarch64-none-linux-gnu-objdump",
		"gcov": "bin/aarch64-none-linux-gnu-gcov",
		"strip": "bin/aarch64-none-linux-gnu-strip",
		"llvm-cov": "/bin/false",
	},
	compile_flags = [
        "-isystem", "external/arm64_gcc_linux_x86_64/aarch64-none-linux-gnu/include/c++/12.2.1/aarch64-none-linux-gnu",
        "-isystem", "external/arm64_gcc_linux_x86_64/aarch64-none-linux-gnu/include/c++/12.2.1",
        "-isystem", "external/arm64_gcc_linux_x86_64/aarch64-none-linux-gnu/include",
		"-isystem", "external/arm64_gcc_linux_x86_64/aarch64-none-linux-gnu/libc/usr/include",
        "-isystem", "external/arm64_gcc_linux_x86_64/lib/gcc/aarch64-none-linux-gnu/12.2.1/include",
	],
	link_flags = [],
)

filegroup(
	name = "all",
	srcs = glob(["**/*",]),
)

cc_toolchain(
	name = "cc_toolchain",
	all_files = ":all",
	ar_files = ":all",
	as_files = ":all",
	compiler_files = ":all",
	dwp_files = ":all",
	linker_files = ":all",
	objcopy_files = ":all",
	strip_files = ":all",
	static_runtime_lib = ":all",
	toolchain_config = ":cc_toolchain_config",
)
