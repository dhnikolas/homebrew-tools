
class Warpserver < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.3/warp-server-v0.0.3-osx.tar.gz"
  sha256 "b2a74eb1caee291f75e67e67838bfbf4c932103a42968eb33166e3ccbf91b97e"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
