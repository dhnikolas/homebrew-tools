class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.4/cloner-0.0.4.tar.gz"
  sha256 "b9036b507b7cb9c4e477fa94b836a7b23fe1e97ec75cf0554e3b4d23fe680025"

  bottle :unneeded

  def install
    out_file = File.new("#{Dir.home}/.clonerconfig", "w")
    out_file.puts("{}")
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
