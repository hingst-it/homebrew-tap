class Panko < Formula
  desc "Self-service infrastructure API powered by OpenTofu and Kubernetes"
  homepage "https://github.com/hingst-it/panko"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.2/panko_0.0.2_darwin_arm64.tar.gz"
      sha256 "397a0cdae26e098d609aa835ada9b6497be27a55ecca369d1119c06a9fe59024"
    end
    on_intel do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.2/panko_0.0.2_darwin_amd64.tar.gz"
      sha256 "fa881ce63acc8ca5e4a49d9bdc43f527231951e93053711f461bad6312dac40c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.2/panko_0.0.2_linux_arm64.tar.gz"
      sha256 "f94f7e36e382b5e46168acad86a5ad46ce475972c2a0ed0c618272cfeca662d3"
    end
    on_intel do
      url "https://github.com/hingst-it/panko/releases/download/v0.0.2/panko_0.0.2_linux_amd64.tar.gz"
      sha256 "f751adac0ec5d60c02f7a6d4fe0bfbc8c60f754509b8c9857cc46f354dbed815"
    end
  end

  def install
    bin.install "panko", "panko-admin"
  end

  test do
    assert_equal "panko v0.0.2", shell_output("#{bin}/panko --version").strip
    assert_equal "panko-admin v0.0.2", shell_output("#{bin}/panko-admin --version").strip
  end
end
