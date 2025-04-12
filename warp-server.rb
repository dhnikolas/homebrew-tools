
class WarpServer < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.5/warp-server-v0.0.5-osx.tar.gz"
  sha256 "a74ff6f3467e78f9cec7124521b5537eb613589d87a8a263ee34005c504888a2"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
