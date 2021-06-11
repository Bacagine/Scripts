help:
	@printf "NOTE: Run this Makefile as root\n\n"
	@printf "help            Show this message and exit\n"
	@printf "make-executable Make all scrips executable\n"
	@printf "snap-kill       Purge snapd\n"
	@printf "flatpak_kill    Purge flatpak\n"
	@printf "install-all     Install the scripts and linux-libre kernel\n"
make-executable:
	chmod +x *.sh
	chmod +x */*.sh
snap-kill:
	./snap_kill/snap_kill.sh
	cp ./snap_kill/nosnap.pref /etc/apt/preferences.d/nosnap.pref
flatpak-kill:
	./flatpak_kill/flatpak_kill.sh
	cp ./flatpak_kill/noflatpak.pref /etc/apt/preferences.d/noflatpak.pref
install-all:
	cp update-discord.sh /usr/bin/update-discord
	cp remove-firmware.sh /usr/bin/remove-firmware
#	cp ./backup-debian-pkgs/pkgs_backup.sh /usr/bin/pkgs_backup
#	cp ./backup-debian-pkgs/restore_backup_pkgs.sh /usr/bin/restore_backup_pkgs
	cp configurations/faxina.sh /usr/bin/faxina
	./linux-libre/install.sh

