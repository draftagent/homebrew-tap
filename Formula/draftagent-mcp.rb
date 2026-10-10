class DraftagentMcp < Formula
  desc "Local MCP server for inspecting and transforming Microsoft Word documents"
  homepage "https://draftagent.dev"
  url "https://github.com/draftagent/releases/releases/download/v0.1.0/draftagent-mcp-aarch64-apple-darwin.tar.xz"
  sha256 "60bac1af6f1d9a4d1e6b15d62187fcce338f2e1f9c5cd3326f03c0aa57bfcbf5"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "draftagent-mcp"
  end

  test do
    system "#{bin}/draftagent-mcp", "--help"
  end
end
