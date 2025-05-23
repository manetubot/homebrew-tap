class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "56c05c8664037310adba934c0c06e527cead4bd0b2d6ae8155f6565932c32b28"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a7de64470f2f9107ee7a4b5dbc0d1186d435c92ed7fc7d2dacaca6894cad498d"
    sha256 cellar: :any_skip_relocation, monterey: "6e3f2a8115e4770255a76cdc97265f12fdb920c74794315f08ece9e7ac78f464"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ea3baf77f14fb4fd51861db60bcf880205fe7cbc2f725161d7555feffcfb8fad"
    sha256 cellar: :any_skip_relocation, arm64_linux: "8909055b49a622b5d291bc3ca93e59ded39f9b90e9817d6a9607744eb798ad4f"
  end
  
  def install
    bin.install "bin/mpe"
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
