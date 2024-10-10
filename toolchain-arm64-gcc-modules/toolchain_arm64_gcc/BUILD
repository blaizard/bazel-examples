platform(
	name = "toolchain_arm64_gcc",
	constraint_values = [
		"@platforms//cpu:arm64",
	],
)

toolchain(
	name = "arm64_gcc_linux_x86_64",
	exec_compatible_with = [
		"@platforms//os:linux",
		"@platforms//cpu:x86_64",
    ],
	target_compatible_with = [
		"@platforms//cpu:arm64",
	],
	toolchain_type = "@rules_cc//cc:toolchain_type",
	toolchain = "@arm64_gcc_linux_x86_64//:cc_toolchain",
)
