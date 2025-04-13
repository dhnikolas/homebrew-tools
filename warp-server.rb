
class WarpServer < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.6/warp-server-v0.0.6-osx.tar.gz"
  sha256 "fb2f866d19f3f2eef7b13915d99edbf60242013d062ff0f0b8ca4e530ce5dd4c"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
