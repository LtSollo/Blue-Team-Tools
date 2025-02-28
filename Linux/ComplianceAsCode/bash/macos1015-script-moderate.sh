#!/bin/bash
###############################################################################
#
# Bash Remediation Script for NIST 800-53 Moderate-Impact Baseline for Apple macOS 10.15 Catalina
#
# Profile Description:
# This compliance profile reflects the core set of Moderate-Impact Baseline
# configuration settings for deployment of Apple macOS 10.15 Catalina
# into U.S. Defense, Intelligence, and Civilian agencies.
# Development partners and sponsors include the U.S. National Institute
# of Standards and Technology (NIST), U.S. Department of Defense, and the
# the National Security Agency.
# This baseline implements configuration requirements from the following
# sources:
# - NIST 800-53 control selections for Moderate-Impact systems (NIST 800-53)
# For any differing configuration requirements, e.g. password lengths, the stricter
# security setting was chosen. Security Requirement Traceability Guides (RTMs) and
# sample System Security Configuration Guides are provided via the
# scap-security-guide-docs package.
# This profile reflects U.S. Government consensus content and is developed through
# the ComplianceAsCode initiative, championed by the National
# Security Agency. Except for differences in formatting to accommodate
# publishing processes, this profile mirrors ComplianceAsCode
# content as minor divergences, such as bugfixes, work through the
# consensus and release processes.
#
# Profile ID:  moderate
# Benchmark ID:  macOS-1015
# Benchmark Version:  0.1.52
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.3.3 using:
# $ oscap xccdf generate fix --profile moderate --fix-type bash xccdf-file.xml
#
# This Bash Remediation Script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this Bash Remediation Script:
# $ sudo ./remediation-script.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 2) for 'service_auditd_enabled'
###############################################################################
(>&2 echo "Remediating rule 1/2: 'service_auditd_enabled'")

launchctl load -w /System/Library/LaunchDaemons/com.apple.auditd.plist

# END fix for 'service_auditd_enabled'

###############################################################################
# BEGIN fix (2 / 2) for 'audit_failure_halt'
###############################################################################
(>&2 echo "Remediating rule 2/2: 'audit_failure_halt'")

/usr/bin/sed -i.bak '/^policy/ s/$/,ahlt/' /etc/security/audit_control; sudo /usr/sbin/audit -s

# END fix for 'audit_failure_halt'

