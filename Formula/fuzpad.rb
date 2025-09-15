class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/2.04.02/fuzpad-2.04.02.tar.gz"
  sha256 "899cfe06015061558df7d863c844c6e9993f4c4677a18c55c5ad2ff2f4105bbb"
  license "GPL-3.0-or-later"

  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "fuzpad" => "fuzpad"
  end
end
