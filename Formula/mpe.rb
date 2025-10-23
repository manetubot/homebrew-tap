class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.9-2"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.9-2/mpe-1.0.9-2.tar.gz"
  sha256 "ca4efe1fd0be2e660f774454116a6e1689fd303af67e6a6154072567579f8844"

  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.9-2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f1a75a7b7783335f2ab86f16eb520f282e629a445d32c581ba4317b85c5ec01c"
    sha256 cellar: :any_skip_relocation, monterey: "dabbd44d50954fa1d54477ac4fc4d733190c70d2a700228cc3a6feec0a817c23"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "eceaeb2832e84b013b3543de11bde87ad28c23841dc60aaf8819fd9bc8c695ca"
    sha256 cellar: :any_skip_relocation, arm64_linux: "09a4665001b0c0eb28ff2ad01c265bbbad1ea50ed9c6a5daf9b0cdbbd50bdf99"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
