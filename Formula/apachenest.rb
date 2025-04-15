class Apachenest < Formula
  desc "Minimalistic Apache + PHP environment manager."
  homepage "https://github.com/JianZcar/ApacheNest"
  url "https://github.com/JianZcar/ApacheNest/releases/download/0.06.00/apachenest.tar.gz"
  sha256 "d864cfe65ec839eda3f167baaa6f0e4c24beac225c18d5039a557dd7a2ef39ae"
  license "GPL-3.0-or-later"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "apachenest" => "apachenest"
  end
end
