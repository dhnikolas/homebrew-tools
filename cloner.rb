
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v0.0.23/cloner-v0.0.23-osx.tar.gz"
  sha256 "a7b74025ac7a55cb002473d6974c89cc20d9b7287e3e4b95195e2d05b50b5cc8"

  def install
    out_file = File.new("#{Dir.home}/.clonerconfig", "w")
    out_file.puts("{}")
    bin.install "cloner"
  end

  test do
    system "#{bin}/cloner", "--version"
  end
end
