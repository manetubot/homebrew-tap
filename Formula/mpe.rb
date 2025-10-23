class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.9-1"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.9-1/mpe-1.0.9-1.tar.gz"
  sha256 "4f2d5c0d972d7c4fd62291168ef715b5a1ec4c2d05865c92998271f6b16ca937"

  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.9-1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3be30b26c8b3e280b4fd22943330edf9494bed14d99736ccc1e5aac627c1fceb"
    sha256 cellar: :any_skip_relocation, monterey: "96447db0966c45c51e1d3e19f86f280890080f7650982c84f676c21e21e8faaa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "354574ef9f830431991b7be2f309158751ed277ff6a5910af147bfdb1d248c2b"
    sha256 cellar: :any_skip_relocation, arm64_linux: "97c3cf3405df49f843ab913582c8f99b94dc4eeb31b2ff1dd0c64416c7573b9c"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
