class Fuzpad < Formula
  desc "Minimalistic note management solution. Powered by fzf"
  homepage "https://github.com/JianZcar/FuzPad"
  url "https://github.com/JianZcar/FuzPad/releases/download/1.0.82/fuzpad-1.0.82.tar.gz"
  sha256 "a839641914311b1fa8cd3eb46d6a6cbfde5edca64cb5cc9a8a95b3d387c9aa95"
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
