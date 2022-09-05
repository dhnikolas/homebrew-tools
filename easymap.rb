
class Easymap < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/easymap"
  url "https://github.com/dhnikolas/easymap/releases/download/v0.0.2/easymap-v0.0.2-osx.tar.gz"
  sha256 "0c9d1523e29b5a605317511de845f2aa798c1a46aeaa0347b27384c27d53a172"

  def install
    out_file = File.new("#{Dir.home}/.easymapconfig", "w")
    out_file.puts("{}")
    bin.install "easymap"
  end

  test do
    system "#{bin}/easymap", "--version"
  end
end
