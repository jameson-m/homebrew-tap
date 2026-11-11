class Agentmon < Formula
  desc "Terminal system monitor for running many Claude Code sessions"
  homepage "https://github.com/jameson-m/agentmon"
  version "0.1.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/jameson-m/agentmon/releases/download/v0.1.0/agentmon-macos-aarch64"
    sha256 "f140fb36e43fec887812035a0006681fd0fd6ca1670f3fd197b7a93d9f08f36a"
  end

  on_linux do
    on_intel do
      url "https://github.com/jameson-m/agentmon/releases/download/v0.1.0/agentmon-linux-x86_64"
      sha256 "eef664b0902d14680d0a39fe87521bd914f82279cbcb9d33ea7e33efd3d0506f"
    end
    on_arm do
      url "https://github.com/jameson-m/agentmon/releases/download/v0.1.0/agentmon-linux-aarch64"
      sha256 "6b97cb668d706f69fc39515e85020d1b9d4be413a1e30b7db342c77930d60af1"
    end
  end

  def install
    bin.install Dir["agentmon-*"].first => "agentmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmon --version")
  end
end
