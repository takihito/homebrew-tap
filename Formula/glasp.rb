class Glasp < Formula
  desc "CLI tool for developing, managing, and deploying GAS code locally"
  homepage "https://github.com/takihito/glasp"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/takihito/glasp/releases/download/v0.4.0/glasp_v0.4.0_darwin_arm64.tar.gz"
      sha256 "3aa1788c0ce1c2f4accda120287f3a391fb4af0693f66868d4eb33c82e6f6fe6"
    else
      url "https://github.com/takihito/glasp/releases/download/v0.4.0/glasp_v0.4.0_darwin_amd64.tar.gz"
      sha256 "6b38cdafd16eb4941b653bbe9f633e443174c8fdb96f2650e80d50df3d81eb3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/takihito/glasp/releases/download/v0.4.0/glasp_v0.4.0_linux_arm64.tar.gz"
      sha256 "12c85c599de0975fa22e2dfbd6016050ab44973d78c4555e523969f70cee4565"
    else
      url "https://github.com/takihito/glasp/releases/download/v0.4.0/glasp_v0.4.0_linux_amd64.tar.gz"
      sha256 "7d705ba342b7a7ac42fa281313fa2a0f17725085fa1e756e0062fcf5931adfaf"
    end
  end

  def install
    bin.install "glasp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glasp version")
  end
end
