class Roam < Formula
  desc "Reconnect interactive SSH sessions on macOS network changes"
  homepage "https://github.com/recursiveascent/roam"
  url "https://github.com/recursiveascent/roam/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "17fdcd9be57c9209c21896ee4612dacc244627bff624d10c09a2541f8a8f861f"
  license "MIT"

  depends_on :macos
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system bin/"roam", "--version"
  end
end
