class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "c1e8b08bf59fd84212b5992353ef4f17b25e5d88dee806e339608e19d5117dfa"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "5820f1cecce2e3960d052edb1a6e0667338e94ac31ba853d1da6a92986b74f45"
    sha256 cellar: :any_skip_relocation, monterey: "579e55936cb07b263c20191205516935e14a107974e8c4a1cd39f6bb575e03f6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b36737702588feeeb11156e1af776bbce5d79f1a257b95cd0dbf112bb9d049f"
    sha256 cellar: :any_skip_relocation, arm64_linux: "f164f91cac9a196c169d89f925557f53d99c868644955fb4a90422377e4968f5"
  end
  
  def install
    bin.install "bin/mpe"
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
