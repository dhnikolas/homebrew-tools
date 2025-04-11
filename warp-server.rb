
class Warp-server < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.2/warp-server-v0.0.2-osx.tar.gz"
  sha256 "d7e61ddf681cd66221528b23e211c83568895bcf121cb65b8fbfd5038e54aa3e"

  def install
    out_file = File.new("#{Dir.home}/.warp-serverconfig", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
