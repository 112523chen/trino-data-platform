# regal ignore:directory-package-mismatch
package configuration

import rego.v1

# https://github.com/lakekeeper/lakekeeper/blob/main/authz/opa-bridge/policies/configuration.rego

env := opa.runtime().env

default trino_admin_users := []

trino_admin_users := admin_users if {
	admin_csv := object.get(env, "TRINO_ADMIN_USERS", "")
	admin_csv != ""
	admin_users := split(admin_csv, ",")
}
