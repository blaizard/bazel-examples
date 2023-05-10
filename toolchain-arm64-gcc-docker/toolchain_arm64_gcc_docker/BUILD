load("@bazel_tools//tools/cpp:unix_cc_toolchain_config.bzl", "cc_toolchain_config")

# Target platform

platform(
	name = "toolchain_arm64_gcc_docker",
	constraint_values = [
		"@platforms//cpu:arm64",
	],
)

# Execution platform

constraint_setting(
	name = "docker_image"
)

constraint_value(
	name = "docker_image_linux_arm64",
	constraint_setting = ":docker_image",
)

platform(
	name = "execution_platform",
	constraint_values = [
		":docker_image_linux_arm64",
	],
	exec_properties = {
		"container-image": "docker://docker.io/dockcross/linux-arm64:20230421-a0eaff4",
	},
)

# Toolchain

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
		"gcc": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-g++",
		"cpp": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-cpp",
		"ar": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-ar",
		"nm": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-nm",
		"ld": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-ld",
		"as": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-as",
		"objcopy": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-objcopy",
		"objdump": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-objdump",
		"gcov": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-gcov",
		"strip": "/usr/xcc/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-strip",
		"llvm-cov": "/bin/false",
	},
	cxx_builtin_include_directories = [
		"/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/include/c++/11.3.0/aarch64-unknown-linux-gnu",
		"/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/include/c++/11.3.0",
		"/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/sysroot/usr/include",
		"/usr/xcc/aarch64-unknown-linux-gnu/lib/gcc/aarch64-unknown-linux-gnu/11.3.0/include",
	],
	compile_flags = [
        "-isystem", "/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/include/c++/11.3.0/aarch64-unknown-linux-gnu",
        "-isystem", "/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/include/c++/11.3.0",
		"-isystem", "/usr/xcc/aarch64-unknown-linux-gnu/aarch64-unknown-linux-gnu/sysroot/usr/include",
		"-isystem", "/usr/xcc/aarch64-unknown-linux-gnu/lib/gcc/aarch64-unknown-linux-gnu/11.3.0/include",
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

toolchain(
	name = "arm64_gcc_linux_x86_64",
	exec_compatible_with = [
		":docker_image_linux_arm64",
    ],
	target_compatible_with = [
		"@platforms//cpu:arm64",
	],
	toolchain_type = "@rules_cc//cc:toolchain_type",
	toolchain = ":cc_toolchain",
)
