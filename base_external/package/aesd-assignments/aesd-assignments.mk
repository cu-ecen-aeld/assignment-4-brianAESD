
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#AESD_ASSIGNMENTS_VERSION = 'fc58f4f4eca860e52158a966467e7d5753d73873'
#AESD_ASSIGNMENTS_VERSION = 'ad429d6f476d2355c6c3618c35d228730a0b24e9'
#AESD_ASSIGNMENTS_VERSION = 'fcd9073fe98b873ecc4ed85f481e2a2f21b893a3'
#AESD_ASSIGNMENTS_VERSION = '19c2d391a94a72405d788079db7f77574464deef'
#AESD_ASSIGNMENTS_VERSION = '19c2d391a94a72405d788079db7f77574464deef'
#AESD_ASSIGNMENTS_VERSION = '679be358ec6f776a36dafb357fc7214c54ca3b33'

#AESD_ASSIGNMENTS_VERSION = 'bb0964eb9031e2de21dbe3d20c3839768b36a61d'
AESD_ASSIGNMENTS_VERSION = '9bf26c22033b4eaf17578dd36a90793af4e565b5'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-brianAESD.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin

	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin

endef

$(eval $(generic-package))
