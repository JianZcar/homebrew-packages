class Portainerapache < Formula
  desc "Containerized Apache with multi-PHP support using Podman and fzf."
  homepage "https://github.com/JianZcar/PortainerApache"
  url "https://github.com/JianZcar/PortainerApache/releases/download/1.00.01/portainerapache.tar.gz"
  sha256 "8beaaa55379fb72b3e0900205fb8e4cb30aba4de237965f65cdb868532139c17"
  license "GPL-3.0-or-later"

  skip_clean "bin"
  
  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "tree"
  depends_on "fzf"

  def install
    bin.install "bin/portainer-apache"
  end
end
