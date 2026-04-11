package trino

import rego.v1

import data.configuration

default allow := false

allow if is_admin

is_admin if {
	trino_user_id in configuration.trino_admin_users
}
