
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.27/cloner-v0.0.27-osx.tar.gz"
  sha256 "538c61f7799722df69bb42a046af10bed7a1cdb81a670a5f2d3a72f0010b039a"

  def install
    out_file = File.new("#{Dir.home}/.clonerconfig", "w")
    out_file.puts("{}")
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
