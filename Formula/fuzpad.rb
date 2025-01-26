class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/1.0.6/fuzpad-1.0.6.tar.gz"
  sha256 "c20c0ddd7bac6d867f650c33975b16b373a1171dc5caae5c07fc36104026125f"
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
