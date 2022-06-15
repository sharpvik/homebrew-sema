class Sema < Formula
  desc "Semantic commit tool"
  homepage "https://github.com/sharpvik/sema#readme"
  url "https://github.com/sharpvik/sema/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f72321388e23c767ca3009cc511c63b0a375c330632ff465e0aa5453fac235c6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "mod", "tidy"
    system "go", "build", "-o", bin/"sema"
  end

  test do
    system bin/"sema", "--help"
  end
end
