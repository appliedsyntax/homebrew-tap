class ReckonCli < Formula
  desc "Natural-language calculator for the command-line"
  homepage "https://github.com/appliedsyntax/reckon"
  url "https://github.com/appliedsyntax/reckon/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "53898b849dcbb79bec9b06748be2cbed69bcf778b5ab199110099da23ba5a759"
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
