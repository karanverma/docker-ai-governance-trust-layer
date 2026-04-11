# LAYER 3: GOVERNANCE (The "Brain" of the Trust Stack)
# Component: MCP Gateway & Rego Policies
# Purpose: Direct control over what actions the AI is allowed to perform.

package kaname.authz

default allow = false

# Rule: Allow the agent to read documentation (Safe action)
allow {
input.action == "read"
input.resource_type == "documentation"
}

# Rule: Block access to system secrets (Safety check)
deny {
input.path == "/etc/shadow"
}

# Rule: Block network requests to unknown sites (Data safety)
deny {
input.type == "network_egress"
not input.destination == "api.trusted-partner.com"
}

