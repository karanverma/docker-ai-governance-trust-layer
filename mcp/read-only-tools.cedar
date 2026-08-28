// Example Docker MCP organization policy.
//
// Permit read-only tool calls for the registered MCP server "example".
//
// Note: readOnly is a tool annotation supplied by the MCP server.
// Tool annotations are advisory metadata.

permit (principal, action == MCP::Action::"invokeTool", resource)
when {
  resource in MCP::Server::"example" &&
  resource.readOnly == true
};
