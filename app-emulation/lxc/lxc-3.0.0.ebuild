# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit autotools bash-completion-r1 linux-info versionator flag-o-matic systemd

DESCRIPTION="LinuX Containers userspace utilities"
HOMEPAGE="https://linuxcontainers.org/"
SRC_URI="https://linuxcontainers.org/downloads/lxc/${P}.tar.gz"

KEYWORDS="~amd64 ~arm ~arm64"

LICENSE="LGPL-3"
SLOT="0"
IUSE="doc examples seccomp pam"

RDEPEND="net-libs/gnutls
	sys-libs/libcap
	seccomp? ( sys-libs/libseccomp )"

DEPEND="${RDEPEND}
	doc? ( app-text/docbook-sgml-utils )
	>=sys-libs/libcap-ng-0.7.9
	>=sys-kernel/linux-headers-3.2"

RDEPEND="${RDEPEND}
	sys-process/criu
	sys-apps/util-linux
	app-misc/pax-utils
	virtual/awk"

CONFIG_CHECK="~CGROUPS ~CGROUP_DEVICE
	~CPUSETS ~CGROUP_CPUACCT
	~CGROUP_SCHED

	~NAMESPACES
	~IPC_NS ~USER_NS ~PID_NS

	~NETLINK_DIAG ~PACKET_DIAG
	~INET_UDP_DIAG ~INET_TCP_DIAG
	~UNIX_DIAG ~CHECKPOINT_RESTORE

	~CGROUP_FREEZER
	~UTS_NS ~NET_NS
	~VETH ~MACVLAN

	~POSIX_MQUEUE
	~!NETPRIO_CGROUP

	~!GRKERNSEC_CHROOT_MOUNT
	~!GRKERNSEC_CHROOT_DOUBLE
	~!GRKERNSEC_CHROOT_PIVOT
	~!GRKERNSEC_CHROOT_CHMOD
	~!GRKERNSEC_CHROOT_CAPS
	~!GRKERNSEC_PROC
	~!GRKERNSEC_SYSFS_RESTRICT
"

ERROR_DEVPTS_MULTIPLE_INSTANCES="CONFIG_DEVPTS_MULTIPLE_INSTANCES:  needed for pts inside container"

ERROR_CGROUP_FREEZER="CONFIG_CGROUP_FREEZER:  needed to freeze containers"

ERROR_UTS_NS="CONFIG_UTS_NS:  needed to unshare hostnames and uname info"
ERROR_NET_NS="CONFIG_NET_NS:  needed for unshared network"

ERROR_VETH="CONFIG_VETH:  needed for internal (host-to-container) networking"
ERROR_MACVLAN="CONFIG_MACVLAN:  needed for internal (inter-container) networking"

ERROR_NETLINK_DIAG="CONFIG_NETLINK_DIAG:  needed for lxc-checkpoint"
ERROR_PACKET_DIAG="CONFIG_PACKET_DIAG:  needed for lxc-checkpoint"
ERROR_INET_UDP_DIAG="CONFIG_INET_UDP_DIAG:  needed for lxc-checkpoint"
ERROR_INET_TCP_DIAG="CONFIG_INET_TCP_DIAG:  needed for lxc-checkpoint"
ERROR_UNIX_DIAG="CONFIG_UNIX_DIAG:  needed for lxc-checkpoint"
ERROR_CHECKPOINT_RESTORE="CONFIG_CHECKPOINT_RESTORE:  needed for lxc-checkpoint"

ERROR_POSIX_MQUEUE="CONFIG_POSIX_MQUEUE:  needed for lxc-execute command"

ERROR_NETPRIO_CGROUP="CONFIG_NETPRIO_CGROUP:  as of kernel 3.3 and lxc 0.8.0_rc1 this causes LXCs to fail booting."

ERROR_GRKERNSEC_CHROOT_MOUNT="CONFIG_GRKERNSEC_CHROOT_MOUNT:  some GRSEC features make LXC unusable see postinst notes"
ERROR_GRKERNSEC_CHROOT_DOUBLE="CONFIG_GRKERNSEC_CHROOT_DOUBLE:  some GRSEC features make LXC unusable see postinst notes"
ERROR_GRKERNSEC_CHROOT_PIVOT="CONFIG_GRKERNSEC_CHROOT_PIVOT:  some GRSEC features make LXC unusable see postinst notes"
ERROR_GRKERNSEC_CHROOT_CHMOD="CONFIG_GRKERNSEC_CHROOT_CHMOD:  some GRSEC features make LXC unusable see postinst notes"
ERROR_GRKERNSEC_CHROOT_CAPS="CONFIG_GRKERNSEC_CHROOT_CAPS:  some GRSEC features make LXC unusable see postinst notes"
ERROR_GRKERNSEC_PROC="CONFIG_GRKERNSEC_PROC:  this GRSEC feature is incompatible with unprivileged containers"
ERROR_GRKERNSEC_SYSFS_RESTRICT="CONFIG_GRKERNSEC_SYSFS_RESTRICT:  this GRSEC feature is incompatible with unprivileged containers"

DOCS=(AUTHORS CONTRIBUTING MAINTAINERS NEWS README doc/FAQ.txt)

pkg_setup() {
	kernel_is -lt 4 7 && CONFIG_CHECK="${CONFIG_CHECK} ~DEVPTS_MULTIPLE_INSTANCES"
	linux-info_pkg_setup
}

src_prepare() {
	eapply "${FILESDIR}"/${PN}-3.0.0-bash-completion.patch
	eapply "${FILESDIR}"/${PN}-2.0.5-omit-sysconfig.patch
	eapply_user
	eautoreconf
}

src_configure() {
	append-flags -fno-strict-aliasing

	# I am not sure about the --with-rootfs-path
	# /var/lib/lxc is probably more appropriate than
	# /usr/lib/lxc.
	# Note by holgersson: Why is apparmor disabled?
	econf \
		--localstatedir=/var \
		--bindir=/usr/bin \
		--sbindir=/usr/bin \
		--with-config-path=/var/lib/lxc	\
		--with-rootfs-path=/var/lib/lxc/rootfs \
		--with-distro=gentoo \
		--with-runtime-path=/run \
		--disable-apparmor \
		--disable-werror \
		$(use_enable pam) \
		$(use_enable doc) \
		$(use_enable examples) \
		$(use_enable seccomp)
}

src_compile() {
	default
}

src_install() {
	default

	mv "${ED}"/usr/share/bash-completion/completions/${PN} "${ED}"/$(get_bashcompdir)/${PN}-start || die
	# start-ephemeral is no longer a command but removing it here
	# generates QA warnings (still in upstream completion script)
	bashcomp_alias ${PN}-start \
		${PN}-{attach,cgroup,copy,console,create,destroy,device,execute,freeze,info,monitor,snapshot,stop,unfreeze,unshare,wait}

	keepdir /etc/lxc /var/lib/lxc/rootfs /var/log/lxc

	find "${D}" -name '*.la' -delete

	# Gentoo-specific additions!
	newinitd "${FILESDIR}/${PN}.initd.5" ${PN}

	# Remember to compare our systemd unit file with the upstream one
	# config/init/systemd/lxc.service.in
	systemd_newunit "${FILESDIR}"/${PN}_at.service.4 "lxc@.service"
}

pkg_postinst() {
	elog ""
	elog "Starting from version ${PN}-1.1.0-r3, the default lxc path has been"
	elog "moved from /etc/lxc to /var/lib/lxc. If you still want to use /etc/lxc"
	elog "please add the following to your /etc/lxc/default.conf"
	elog "lxc.lxcpath = /etc/lxc"
	elog ""
	elog "There is an init script provided with the package now; no documentation"
	elog "is currently available though, so please check out /etc/init.d/lxc ."
	elog "You _should_ only need to symlink it to /etc/init.d/lxc.configname"
	elog "to start the container defined into /etc/lxc/configname.conf ."
	elog "For further information about LXC development see"
	elog "http://blog.flameeyes.eu/tag/lxc" # remove once proper doc is available
	elog ""
}
