# Class: selajnux
# ===========================
#
# Handle selinux in hiera.
#
# Parameters
# ----------
#
# * `selajnux::allow`
# Configure selinux boolean value to "on".
# 
# * `selajnux::deny`
# Configure selinux boolean value to "off".
#
# Variables
# ----------
#
# No required variables.
#
# Examples
# --------
#
# @example
#    include selajnux
#    
#    selajnux::allow:
#      - httpd_can_network_connect
#      - httpd_can_network_relay
#
# Authors
# -------
#
# Alexander Salmin
#
class selajnux ( $allow = [], $deny = []) {

    # Allow the following selinux booleans
    # In hiera: selajnux::allow
    $allow.each | $name | {
        selboolean { $name:
          name  => $name,
          value => on,
        }
    }

    # Deny the following selinux booleans
    # In hiera: selajnux::deny
    $deny.each | $name | {
        selboolean { $name:
          name  => $name,
          value => off,
        }
    }

}
