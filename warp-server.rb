
class WarpServer < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.9/warp-server-v0.0.9-osx.tar.gz"
  sha256 "e69f4d793eb88b0bb6f682a45a4d588bc41a6116107d02341be812b7a7829a01"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
