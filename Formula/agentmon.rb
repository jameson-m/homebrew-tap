class Agentmon < Formula
  desc "Terminal system monitor for running many Claude Code sessions"
  homepage "https://github.com/jameson-m/agentmon"
  version "0.2.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/jameson-m/agentmon/releases/download/v0.2.0/agentmon-macos-aarch64"
    sha256 "643ee813f2ac79838f55c0de9236f5f54677e16a27be73e66235c4430daaecd2"
  end

  on_linux do
    on_intel do
      url "https://github.com/jameson-m/agentmon/releases/download/v0.2.0/agentmon-linux-x86_64"
      sha256 "6bb8ae21c1de541718dfb538c84fdfc5d96c9983d724416bd9cbf9c1961d2805"
    end
    on_arm do
      url "https://github.com/jameson-m/agentmon/releases/download/v0.2.0/agentmon-linux-aarch64"
      sha256 "c7c4a8154018590640b1d990627eaecb761dc67ba63d791cff7694dd6d1f3cca"
    end
  end

  def install
    bin.install Dir["agentmon-*"].first => "agentmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmon --version")
  end
end
