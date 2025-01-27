class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/1.03.02/fuzpad-1.03.02.tar.gz"
  sha256 "2fec63db782cc8e7589ff6e161c7a88cdb079f26643c9577936300993f7a0e12"
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
