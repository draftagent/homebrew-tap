class DraftagentCli < Formula
  desc "Command-line tool for inspecting and transforming Microsoft Word documents"
  homepage "https://draftagent.dev"
  url "https://github.com/draftagent/releases/releases/download/v0.1.1/draftagent-cli-aarch64-apple-darwin.tar.xz"
  sha256 "33024a7197819180c5d86105424fcdb0afe1cd2c64446950597c15b5607a5edd"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "draftagent"
  end

  test do
    system "#{bin}/draftagent", "--help"
  end
end
