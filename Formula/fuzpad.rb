class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/2.05.00/fuzpad-2.05.00.tar.gz"
  sha256 "cf35e342d5440d95bef5e099b871c34a11e5205c6de092e61565e0f4a9dfec3a"
  license "GPL-3.0-or-later"

  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "fuzpad" => "fuzpad"
  end
end
