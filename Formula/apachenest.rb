class Apachenest < Formula
  desc "Minimalistic Apache + PHP environment manager."
  homepage "https://github.com/JianZcar/ApacheNest"
  url "https://github.com/JianZcar/ApacheNest/releases/download/0.05.00/apachenest.tar.gz"
  sha256 "f4650b009c6f477b31cd1223085019d614ca41e4680744bd21d3c2f1dca78b67"
  license "GPL-3.0-or-later"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "apachenest" => "apachenest"
  end
end
