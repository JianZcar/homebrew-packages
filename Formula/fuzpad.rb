class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/2.04.00/fuzpad-2.04.00.tar.gz"
  sha256 "bd5b458dd118ad4a679a765817a826089c5d1ac7247637db329d698fe5747b42"
  license "GPL-3.0-or-later"

  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "bin/fuzpad" => "fuzpad"
  end
end
