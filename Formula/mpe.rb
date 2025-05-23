class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "f844a477d14937b3bb80f543427c41813b4b0fdc62ea202b10309a93b3bf331b"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b6e0b43a4d77d690d85d29f8a479c1d8534f8b689edd3b571f8f8633039874f5"
    sha256 cellar: :any_skip_relocation, monterey: "cbcdc171a4f84be02713f9b76a1e0427849dc3b451bcb66014e660a700ae2b48"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4e09fbd4412208508d1420c2704a5e376c640091e9ae61830d2355cfd2eabc58"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d3d5645758f1ca516eb0eab99fde9aa727658a6012398bf0db7faff3f0814a32"
  end
  
  def install
    bin.install "bin/mpe"
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
