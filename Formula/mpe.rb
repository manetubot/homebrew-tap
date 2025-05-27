class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.1"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.1/mpe-1.0.1.tar.gz"
  sha256 "7c374cd57062a7f1343d9d93f8b3254b29d986dde177e52b6c57c9bf87632ed9"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2eb11aca0ea8343ba27388bf33f56c878a2c1861fcdfdfd3eac5af7987b40806"
    sha256 cellar: :any_skip_relocation, monterey: "0eb7c27d65c331f46715d956a18f320da7affeb6ef565dc988c2542feabbcb0d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "29795da1969ac6d4c3e52b8ff17d27de59a35e2bbba8715895f12a6401f595cf"
    sha256 cellar: :any_skip_relocation, arm64_linux: "c0176999834568a0f4a5999ce66144b3afc35307dc6c0c07ad4d37efb76b8874"
  end
  
  def install
    bin.install "bin/mpe"
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
