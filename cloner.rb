
class Cloner < Formula
  desc "Tool for quick clone layouts repo"
  homepage "https://github.com/dhnikolas/mtsbf-cloner"
  url "https://github.com/dhnikolas/mtsbf-cloner/releases/download/v.0.0.14/cloner-v.0.0.14.tar.gz"
  sha256 "1856e8266ef60221896b4c7ef08fcafb6f4490aa7e39e688d8d6966c183c4a66 cloner.tar.gz"

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
