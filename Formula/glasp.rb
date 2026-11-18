class Glasp < Formula
  desc "CLI tool for developing, managing, and deploying GAS code locally"
  homepage "https://github.com/takihito/glasp"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm64?
      url "https://github.com/takihito/glasp/releases/download/v0.5.3/glasp_v0.5.3_darwin_arm64.tar.gz"
      sha256 "6ec87293a67ef0444feda7d98fe573afb4d4b3454a59b7b06018a013332f8770"
    else
      url "https://github.com/takihito/glasp/releases/download/v0.5.3/glasp_v0.5.3_darwin_amd64.tar.gz"
      sha256 "5b5adb21897f5aa7d16510d5b154e8c60ce6955e165cb09f29ea6b612a25315b"
    end
  end

  on_linux do
    if Hardware::CPU.arm64?
      url "https://github.com/takihito/glasp/releases/download/v0.5.3/glasp_v0.5.3_linux_arm64.tar.gz"
      sha256 "99290ca62409abd0bbdb0a466536d085f3d7f44eac67c0101d2bc03d0fa8a96c"
    else
      url "https://github.com/takihito/glasp/releases/download/v0.5.3/glasp_v0.5.3_linux_amd64.tar.gz"
      sha256 "831ffb7fed698abe525a795f1c76ba35b5f5150ffe44577fc645e2dcd3d7ce5e"
    end
  end

  def install
    bin.install "glasp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glasp version")
  end
end
