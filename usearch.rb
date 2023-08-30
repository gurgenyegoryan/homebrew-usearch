# This formula installs the usearch software package.
#
# Usage:
#
# brew install usearch
#
# Formula created by Bard on 2023-08-30 21:41:16 PST.

class Usearch < Formula
  desc "A software package for searching and comparing biological sequences"
  homepage "https://www.usearch.org/"
  url "https://github.com/gurgenyegoryan/usearch/releases/download/v0.1.1/usearch_macOS_amd_1.2.0.zip"
  sha256 "350ae0632db44af4b078f1207c7233fecb64f55b39bb64a51a22b3b6644e1735"

  def install
    libexec.install "usearch-11.0.763"

    mkdir_p "#{prefix}/lib"
    cp libexec/"usearch-11.0.763/libusearch.so" "#{prefix}/lib"

    mkdir_p "#{prefix}/include"
    cp libexec/"usearch-11.0.763/usearch.h" "#{prefix}/include"
  end
end
