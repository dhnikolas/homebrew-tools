
class Easymap < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/easymap"
  url "https://github.com/dhnikolas/easymap/releases/download/v0.0.3/easymap-v0.0.3-osx.tar.gz"
  sha256 "bdf483c741b85d1c478cf3c8a3e85ffef13b5d062d8e43b6ef097d8571e21233"

  def install
    out_file = File.new("#{Dir.home}/.easymapconfig", "w")
    out_file.puts("{}")
    bin.install "easymap"
  end

  test do
    system "#{bin}/easymap", "--version"
  end
end
