# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	ahash-0.7.6
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.57
	arc-swap-1.5.0
	arrayvec-0.5.2
	arrayvec-0.7.2
	async-channel-1.6.1
	async-executor-1.4.1
	async-global-executor-2.1.0
	async-io-1.7.0
	async-lock-2.5.0
	async-process-1.4.0
	async-std-1.11.0
	async-task-4.2.0
	async-trait-0.1.56
	atomic-waker-1.0.0
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.65
	base-x-0.2.11
	base64-0.13.0
	base64-0.21.0
	bitflags-1.3.2
	block-buffer-0.7.3
	block-buffer-0.9.0
	block-padding-0.1.5
	blocking-1.2.0
	boxfnonce-0.1.1
	bumpalo-3.10.0
	byte-tools-0.3.1
	bytecheck-0.6.9
	bytecheck_derive-0.6.9
	byteorder-1.4.3
	cache-padded-1.2.0
	cassowary-0.3.0
	cc-1.0.73
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.19
	clap-3.2.4
	clap_complete-3.2.1
	clap_derive-3.2.4
	clap_lex-0.2.2
	close_fds-0.3.2
	colored-2.0.0
	colorsys-0.6.5
	concurrent-queue-1.2.2
	console-0.15.0
	const_fn-0.4.9
	core-foundation-sys-0.8.3
	corosensei-0.1.3
	cpufeatures-0.2.2
	cranelift-bforest-0.82.3
	cranelift-codegen-0.82.3
	cranelift-codegen-meta-0.82.3
	cranelift-codegen-shared-0.82.3
	cranelift-entity-0.82.3
	cranelift-frontend-0.82.3
	crc32fast-1.3.2
	crossbeam-0.8.1
	crossbeam-channel-0.5.4
	crossbeam-deque-0.8.1
	crossbeam-epoch-0.9.8
	crossbeam-queue-0.3.5
	crossbeam-utils-0.8.8
	csscolorparser-0.6.2
	ctor-0.1.22
	daemonize-0.4.1
	darling-0.13.4
	darling_core-0.13.4
	darling_macro-0.13.4
	deltae-0.3.0
	derivative-2.2.0
	destructure_traitobject-0.2.0
	dialoguer-0.10.1
	digest-0.8.1
	digest-0.9.0
	directories-next-2.0.0
	dirs-2.0.2
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	discard-1.0.4
	dynasm-1.2.3
	dynasmrt-1.2.3
	either-1.6.1
	encode_unicode-0.3.6
	enum-iterator-0.7.0
	enum-iterator-derive-0.7.0
	enumset-1.0.11
	enumset_derive-0.6.0
	erased-serde-0.3.20
	event-listener-2.5.2
	fake-simd-0.1.2
	fallible-iterator-0.2.0
	fastrand-1.7.0
	filedescriptor-0.8.2
	finl_unicode-1.2.0
	fixedbitset-0.4.2
	fnv-1.0.7
	form_urlencoded-1.0.1
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-io-0.3.21
	futures-lite-1.12.0
	generational-arena-0.2.8
	generic-array-0.12.4
	generic-array-0.14.5
	getopts-0.2.21
	getrandom-0.1.16
	getrandom-0.2.7
	ghost-0.1.4
	gimli-0.26.1
	gloo-timers-0.2.4
	hashbrown-0.11.2
	hashbrown-0.12.3
	heck-0.3.3
	heck-0.4.0
	hermit-abi-0.1.19
	hex-0.4.3
	highway-0.6.4
	humantime-2.1.0
	ident_case-1.0.1
	idna-0.2.3
	indexmap-1.8.2
	insta-1.14.0
	instant-0.1.12
	interprocess-1.2.1
	intmap-0.7.1
	inventory-0.2.3
	is_ci-1.1.1
	itoa-1.0.2
	js-sys-0.3.58
	kdl-4.5.0
	kv-log-macro-1.0.7
	lab-0.11.0
	lazy_static-1.4.0
	leb128-0.2.5
	lev_distance-0.1.1
	libc-0.2.140
	libloading-0.7.4
	libssh2-sys-0.2.23
	libz-sys-1.1.8
	linked-hash-map-0.5.4
	lock_api-0.4.7
	log-0.4.17
	log-mdc-0.1.0
	log4rs-1.2.0
	loupe-0.1.3
	loupe-derive-0.1.3
	mach-0.3.2
	maplit-1.0.2
	matches-0.1.9
	memchr-2.5.0
	memmap2-0.5.7
	memmem-0.1.1
	memoffset-0.6.5
	miette-3.3.0
	miette-5.3.0
	miette-derive-3.3.0
	miette-derive-5.3.0
	minimal-lexical-0.2.1
	miniz_oxide-0.5.3
	mio-0.7.14
	miow-0.3.7
	more-asserts-0.2.2
	names-0.13.0
	nix-0.23.1
	nix-0.24.2
	nom-5.1.2
	nom-7.1.1
	ntapi-0.3.7
	num-derive-0.3.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.13.1
	object-0.28.4
	once_cell-1.12.0
	opaque-debug-0.2.3
	opaque-debug-0.3.0
	openssl-sys-0.9.74
	ordered-float-2.10.0
	ordered-float-3.3.0
	os_str_bytes-6.1.0
	owo-colors-3.4.0
	parking-2.0.0
	parking_lot-0.11.2
	parking_lot-0.12.1
	parking_lot_core-0.8.5
	parking_lot_core-0.9.3
	paste-1.0.7
	percent-encoding-2.1.0
	pest-2.1.3
	pest_derive-2.1.0
	pest_generator-2.1.3
	pest_meta-2.1.3
	phf-0.8.0
	phf-0.10.1
	phf-0.11.1
	phf_codegen-0.8.0
	phf_generator-0.8.0
	phf_generator-0.11.1
	phf_macros-0.11.1
	phf_shared-0.8.0
	phf_shared-0.10.0
	phf_shared-0.11.1
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.25
	polling-2.2.0
	ppv-lite86-0.2.16
	pretty-bytes-0.2.2
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro2-1.0.39
	ptr_meta-0.1.4
	ptr_meta_derive-0.1.4
	quote-1.0.18
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	rand_hc-0.2.0
	rand_pcg-0.2.1
	rayon-1.5.3
	rayon-core-1.9.3
	redox_syscall-0.2.13
	redox_users-0.4.3
	regalloc-0.0.34
	regex-1.5.6
	regex-syntax-0.6.26
	region-3.0.0
	remove_dir_all-0.5.3
	rend-0.3.6
	rkyv-0.7.39
	rkyv_derive-0.7.39
	rmp-0.8.11
	rmp-serde-1.1.0
	rustc-demangle-0.1.21
	rustc-hash-1.1.0
	rustc_version-0.2.3
	rustc_version-0.4.0
	rustversion-1.0.9
	ryu-1.0.10
	scopeguard-1.1.0
	seahash-4.1.0
	semver-0.9.0
	semver-0.11.0
	semver-1.0.17
	semver-parser-0.7.0
	semver-parser-0.10.2
	serde-1.0.137
	serde-value-0.7.0
	serde_bytes-0.11.6
	serde_derive-1.0.137
	serde_json-1.0.81
	serde_yaml-0.8.24
	sha-1-0.8.2
	sha1-0.6.1
	sha1_smol-1.0.0
	sha2-0.9.9
	signal-hook-0.1.17
	signal-hook-0.3.14
	signal-hook-registry-1.4.0
	similar-2.1.0
	siphasher-0.3.10
	sixel-image-0.1.0
	sixel-tokenizer-0.1.0
	slab-0.4.6
	smallvec-1.8.0
	smawk-0.3.1
	socket2-0.4.4
	spinning-0.1.0
	ssh2-0.9.3
	stable_deref_trait-1.2.0
	standback-0.2.17
	stdweb-0.4.20
	stdweb-derive-0.5.3
	stdweb-internal-macros-0.2.9
	stdweb-internal-runtime-0.1.5
	strip-ansi-escapes-0.1.1
	strsim-0.10.0
	strum-0.20.0
	strum_macros-0.20.1
	suggest-0.4.0
	supports-color-1.3.0
	supports-hyperlinks-1.2.0
	supports-unicode-1.0.2
	syn-1.0.96
	sysinfo-0.22.5
	target-lexicon-0.12.5
	tempfile-3.3.0
	termcolor-1.1.3
	terminal_size-0.1.17
	terminfo-0.7.3
	termios-0.3.3
	termwiz-0.20.0
	textwrap-0.14.2
	textwrap-0.15.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	thread-id-4.0.0
	time-0.1.44
	time-0.2.27
	time-macros-0.1.1
	time-macros-impl-0.1.2
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	to_method-1.1.0
	toml-0.5.10
	tracing-0.1.35
	tracing-attributes-0.1.21
	tracing-core-0.1.27
	typemap-ors-1.0.0
	typenum-1.15.0
	typetag-0.1.8
	typetag-impl-0.1.8
	ucd-trie-0.1.3
	unicode-bidi-0.3.8
	unicode-ident-1.0.1
	unicode-linebreak-0.1.2
	unicode-normalization-0.1.19
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unsafe-any-ors-1.0.0
	url-2.2.2
	utf8parse-0.2.0
	uuid-0.8.2
	value-bag-1.0.0-alpha.9
	vcpkg-0.2.15
	version_check-0.9.4
	vte-0.10.1
	vte-0.11.0
	vte_generate_state_changes-0.1.1
	vtparse-0.6.2
	waker-fn-1.1.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.81
	wasm-bindgen-backend-0.2.81
	wasm-bindgen-futures-0.4.31
	wasm-bindgen-macro-0.2.81
	wasm-bindgen-macro-support-0.2.81
	wasm-bindgen-shared-0.2.81
	wasm-encoder-0.13.0
	wasmer-2.3.0
	wasmer-artifact-2.3.0
	wasmer-compiler-2.3.0
	wasmer-compiler-cranelift-2.3.0
	wasmer-compiler-singlepass-2.3.0
	wasmer-derive-2.3.0
	wasmer-engine-2.3.0
	wasmer-engine-dylib-2.3.0
	wasmer-engine-universal-2.3.0
	wasmer-engine-universal-artifact-2.3.0
	wasmer-object-2.3.0
	wasmer-types-2.3.0
	wasmer-vfs-2.3.0
	wasmer-vm-2.3.0
	wasmer-wasi-2.3.0
	wasmer-wasi-types-2.3.0
	wasmparser-0.83.0
	wast-42.0.0
	wat-1.0.44
	web-sys-0.3.58
	wepoll-ffi-0.1.2
	wezterm-bidi-0.2.2
	wezterm-color-types-0.2.0
	wezterm-dynamic-0.1.0
	wezterm-dynamic-derive-0.1.0
	which-4.2.5
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.33.0
	windows-sys-0.36.1
	windows_aarch64_msvc-0.33.0
	windows_aarch64_msvc-0.36.1
	windows_i686_gnu-0.33.0
	windows_i686_gnu-0.36.1
	windows_i686_msvc-0.33.0
	windows_i686_msvc-0.36.1
	windows_x86_64_gnu-0.33.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_msvc-0.33.0
	windows_x86_64_msvc-0.36.1
	xflags-0.3.1
	xflags-macros-0.3.1
	xshell-0.2.2
	xshell-macros-0.2.2
	yaml-rust-0.4.5
	zeroize-1.5.5
"

inherit desktop cargo

DESCRIPTION="A terminal workspace with batteries included"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="
	https://zellij.dev/
	https://github.com/zellij-org/zellij
"
SRC_URI="
	https://github.com/zellij-org/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense WTFPL-2 ZLIB"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

BDEPEND="
	doc? ( app-text/lowdown )
"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

DOCS=(
	CHANGELOG.md
	CODE_OF_CONDUCT.md
	CONTRIBUTING.md
	GOVERNANCE.md
	README.md
	docs/
)

src_compile() {
	cargo_src_compile
	pushd ${PN}-utils 2>/dev/null || die
	cargo_src_compile
	popd 2>/dev/null || die

	if use doc; then
		lowdown -t man -o ${PN}.1 docs/MANPAGE.md || die
	fi
}

src_install() {
	cargo_src_install

	dodoc example/*.*

	insinto /usr/share/zellij
	doins -r example/{themes,layouts}
	doins -r ${PN}-utils/assets/{layouts,plugins,config,shell} \
		${PN}-utils/assets/*.wasm ${PN}-utils/assets/README.md

	use doc && doman ${PN}.1
	domenu assets/zellij.desktop

	insinto /usr/share/zsh/site-functions
	newins ${PN}-utils/assets/completions/comp.zsh _${PN}

	insinto /usr/share/fish/vendor_completions.d
	newins ${PN}-utils/assets/completions/comp.fish ${PN}.fish
}
