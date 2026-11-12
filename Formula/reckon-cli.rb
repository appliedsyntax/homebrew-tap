class ReckonCli < Formula
  desc "Natural-language calculator for the command-line"
  homepage "https://github.com/appliedsyntax/reckon"
  url "https://github.com/appliedsyntax/reckon/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6ead979fdf20fd8e7d0fcf58573663bb66884c7bb9810086be5262f25b6b204c"
  license "MIT"
  head "https://github.com/appliedsyntax/reckon.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reckon-cli")
  end

  test do
    assert_equal "4", shell_output("#{bin}/reckon --no-user-data '2 + 2'").strip
    assert_equal "10", shell_output("#{bin}/reckon --no-user-data '20% of 50'").strip
  end
end
