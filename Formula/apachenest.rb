class Apachenest < Formula
  desc "Minimalistic Apache + PHP environment manager."
  homepage "https://github.com/JianZcar/ApacheNest"
  url "https://github.com/JianZcar/ApacheNest/releases/download/0.05.00/apachenest.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "GPL-3.0-or-later"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "apachenest" => "apachenest"
  end
end
