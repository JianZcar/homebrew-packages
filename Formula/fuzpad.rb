class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/2.04.01/fuzpad-2.04.01.tar.gz"
  sha256 "4b37734a36c0b978931b845b44403b09b9b1a39b6b3035b82740f1b37a94f764"
  license "GPL-3.0-or-later"

  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "fuzpad" => "fuzpad"
  end
end
