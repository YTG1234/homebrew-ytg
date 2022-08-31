class QalculateQt < Formula
  desc "Multi-purpose cross-platform desktop calculator"
  homepage "https://qalculate.github.io/"
  url "https://github.com/Qalculate/qalculate-qt/releases/download/v4.3.0/qalculate-qt-4.3.0.tar.gz"
  sha256 "add2c06b7909b99de2db8853ba48af5556ac51358423faeb1c03931fb6c446bf"
  license "GPL-2.0-or-later"

  depends_on "pkg-config" => :build

  depends_on "gmp"
  depends_on "libqalculate"
  depends_on "mpfr"
  depends_on "qt@5"

  def install
    system "qmake", "PREFIX=#{prefix}", "CONFIG-=app_bundle"
    system "make", "CC=#{ENV.cc}", "CXX=#{ENV.cxx}"
    system "make", "install"
  end

  test do
    system "#{bin}/qalculate-qt", "-v"
  end
end
