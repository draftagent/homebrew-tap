class DraftagentMcp < Formula
  desc "Local MCP server for inspecting and transforming Microsoft Word documents"
  homepage "https://draftagent.dev"
  url "https://github.com/draftagent/releases/releases/download/v0.1.1/draftagent-mcp-aarch64-apple-darwin.tar.xz"
  sha256 "5294a43f59167d75d6b593987ad903682917768a2641523d5bf2b77c5c914732"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "draftagent-mcp"
  end

  test do
    system "#{bin}/draftagent-mcp", "--help"
  end
end
