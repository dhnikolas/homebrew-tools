
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v.0.0.15/cloner-v.0.0.15.tar.gz"
  sha256 "e78c3283c746d5090bb0230c4aa92206caeab6471e13bf2edf856dc80c86d8bf"

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
