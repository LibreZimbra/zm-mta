# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	$(call mk_install_dir, conf/zmconfigd)
	$(call mk_install_dir, conf/sasl2)

	cp cbpolicyd.conf.in                                $(INSTALL_DIR)/conf/cbpolicyd.conf.in
	cp clamd.conf.in                                    $(INSTALL_DIR)/conf/clamd.conf.in
	cp opendkim-localnets.conf.in                       $(INSTALL_DIR)/conf/opendkim-localnets.conf.in
	cp opendkim.conf.in                                 $(INSTALL_DIR)/conf/opendkim.conf.in
	cp postfix_header_checks.in                         $(INSTALL_DIR)/conf/postfix_header_checks.in
	cp postfix_sasl_smtpd.conf                          $(INSTALL_DIR)/conf/sasl2/smtpd.conf.in
	cp salocal.cf.in                                    $(INSTALL_DIR)/conf/salocal.cf.in
	cp saslauthd.conf.in                                $(INSTALL_DIR)/conf/saslauthd.conf.in
	cp zmconfigd/postfix_content_filter.cf              $(INSTALL_DIR)/conf/zmconfigd/postfix_content_filter.cf
	cp zmconfigd/smtpd_end_of_data_restrictions.cf      $(INSTALL_DIR)/conf/zmconfigd/smtpd_end_of_data_restrictions.cf
	cp zmconfigd/smtpd_recipient_restrictions.cf        $(INSTALL_DIR)/conf/zmconfigd/smtpd_recipient_restrictions.cf
	cp zmconfigd/smtpd_relay_restrictions.cf            $(INSTALL_DIR)/conf/zmconfigd/smtpd_relay_restrictions.cf
	cp zmconfigd/smtpd_sender_login_maps.cf             $(INSTALL_DIR)/conf/zmconfigd/smtpd_sender_login_maps.cf
	cp zmconfigd/smtpd_sender_restrictions.cf           $(INSTALL_DIR)/conf/zmconfigd/smtpd_sender_restrictions.cf

clean:
	echo -n
