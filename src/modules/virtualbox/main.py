#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
import subprocess
import libcalamares
from libcalamares.utils import check_target_env_call, check_target_env_output
from string import Template

def run():
    dmi = str(check_target_env_output(['dmidecode']))
    if 'Manufacturer: innotek GmbH' in dmi:
        return None

    libcalamares.utils.debug("REMOVING VBOX GUEST MODULES")
    check_target_env_call(["pacman", "-Rs", "--noconfirm", "virtualbox-guest-*"])