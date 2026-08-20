class Litefind < Formula
  desc "Search your SQLite databases"
  homepage "https://github.com/recursiveascent/litefind"
  url "https://github.com/recursiveascent/litefind/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c6470a2cf512adbb02029969b0d5baa251dcf5550587e5a61092fcaf4362ac33"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system bin/"litefind", "--help"
  end
end
