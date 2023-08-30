class Usearch < Formula
  desc "A software package for searching and comparing biological sequences"
  homepage "https://www.gnu.org/software/wget/"
  url "https://github.com/gurgenyegoryan/usearch/releases/download/v0.1.1/usearch_macOS_amd_1.2.0.zip"
  sha256 "350ae0632db44af4b078f1207c7233fecb64f55b39bb64a51a22b3b6644e1735"

  def install
    system "sudo mkdir /usr/local/lib"
    system "sudo mkdir /usr/local/include"
    system "unzip usearch_macOS_amd_1.2.0.zip"
    system "sudo mv libusearch.so /usr/local/lib/"
    system "sudo mv usearch.h /usr/local/include/"
  end
end
