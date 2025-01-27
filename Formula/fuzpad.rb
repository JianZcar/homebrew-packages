class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/1.03.03/fuzpad-1.03.03.tar.gz"
  sha256 "b7331b5b3aa2e47369ee325d4de2eb222a54b7fde38c44efacb5b34df23cb1a8"
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
