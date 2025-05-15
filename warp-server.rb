
class WarpServer < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.10/warp-server-v0.0.10-osx.tar.gz"
  sha256 "d14f64986d98c6efd8941573b1886d94242dfc39a44f21abfa4920f40af18346"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
