class Delta < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.1/cloner-0.0.1.tar.gz"
  sha256 "11d6991bb1788336f79c622e00eae3be1b23f8afa5d14dcb6be308ba6978bafd"

  bottle :unneeded

  def install
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
