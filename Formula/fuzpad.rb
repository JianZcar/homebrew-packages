class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/2.00.00/fuzpad-2.00.00.tar.gz"
  sha256 "9371390af7020814f468136a806ffad785aff5a2ecd20823239b8c719e1b17e9"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "fuzpad"
  end

  test do
    assert_equal "1", shell_output("#{bin}/fuzpad --test 2>&1 | grep -q \"1\" && echo 1 || echo 0").strip
  end
end
