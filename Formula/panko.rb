class Panko < Formula
  desc "Self-service infrastructure API powered by OpenTofu and Kubernetes"
  homepage "https://github.com/hingst-it/panko"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.1/panko_0.0.1_darwin_arm64.tar.gz"
      sha256 "0f51507320626d31ba2a903b35e17efba6cf5e13279dfc0d8d79a7611cd6b100"
    end
    on_intel do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.1/panko_0.0.1_darwin_amd64.tar.gz"
      sha256 "056d3f6d18105bf285d7e0a082ac09a20d78547fee899d98d5bfa18536e61585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.1/panko_0.0.1_linux_arm64.tar.gz"
      sha256 "2a723bb60e595b904d9062cdf65367144afade7af7c241a7cc76a4f9e392caa8"
    end
    on_intel do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.1/panko_0.0.1_linux_amd64.tar.gz"
      sha256 "abcba6a4812bc38770567fdb34e8aafa2dcb46e4187a7bbe32263655def71032"
    end
  end

  def install
    bin.install "panko", "panko-admin"
  end

  test do
    assert_equal "panko v0.0.1", shell_output("#{bin}/panko --version").strip
    assert_equal "panko-admin v0.0.1", shell_output("#{bin}/panko-admin --version").strip
  end
end
