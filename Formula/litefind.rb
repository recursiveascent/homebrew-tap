class Litefind < Formula
  desc "Search your SQLite databases"
  homepage "https://github.com/recursiveascent/litefind"
  url "https://github.com/recursiveascent/litefind/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2dc509bc7d27e81514ca781e1aa916629d248d18f271f63cbae90bdc73ca3659"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system bin/"litefind", "--help"
  end
end
