
class Easymap < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/easymap"
  url "https://github.com/dhnikolas/easymap/releases/download/v0.0.4/easymap-v0.0.4-osx.tar.gz"
  sha256 "42ccb47be479dbc703944650267853e1f6b89eb1fa825b66266279879395d708"

  def install
    out_file = File.new("#{Dir.home}/.easymapconfig", "w")
    out_file.puts("{}")
    bin.install "easymap"
  end

  test do
    system "#{bin}/easymap", "--version"
  end
end
