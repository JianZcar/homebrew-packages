class Portainerapache < Formula
  desc "Containerized Apache with multi-PHP support using Podman and fzf."
  homepage "https://github.com/JianZcar/PortainerApache"
  url "https://github.com/JianZcar/PortainerApache/releases/download/1.01.00/portainerapache.tar.gz"
  sha256 "e6774897e0c8e21a1f417f75d2df32a7cefb96065965b53d614a02e75188e7b9"
  license "GPL-3.0-or-later"

  depends_on "tree"
  depends_on "fzf"

  def install
    bin.install "bin/portainer-apache" => "portainer-apache"
  end
end
