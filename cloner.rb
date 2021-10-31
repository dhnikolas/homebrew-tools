
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.20/cloner-v0.0.20.tar.gz"
  sha256 "8badf9fc2791e732a02b8c70aab6e53ab6a58640e3d98016d22b4969a54eef63"

  def install
    out_file = File.new("#{Dir.home}/.clonerconfig", "w")
    out_file.puts("{}")
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
