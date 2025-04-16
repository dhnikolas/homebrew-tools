
class WarpServer < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/warp-server"
  url "https://github.com/dhnikolas/warp-server/releases/download/v0.0.7/warp-server-v0.0.7-osx.tar.gz"
  sha256 "26a9e60e69c2b115edc5357149eaa59d5650c5768818f3ae853d2655ff838796"

  def install
    out_file = File.new("#{Dir.home}/.warp-server.yaml", "w")
    out_file.puts("{}")
    bin.install "warp-server"
  end

  test do
    system "#{bin}/warp-server", "--version"
  end
end
