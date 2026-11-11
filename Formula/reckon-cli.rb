class ReckonCli < Formula
  desc "Natural-language calculator for the command-line"
  homepage "https://github.com/appliedsyntax/reckon"
  url "https://github.com/appliedsyntax/reckon/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4acebdd307857d5f96b93d7483d0f682313c21ee6b39a086034be2abd2f7cf45"
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
