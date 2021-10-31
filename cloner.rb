
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.22/cloner-v0.0.22-osx.tar.gz"
  sha256 "7960118600e706618c9e99cba725ee47b5c601bfb5d6d448de3be13219beddab"

  def install
    out_file = File.new("#{Dir.home}/.clonerconfig", "w")
    out_file.puts("{}")
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
