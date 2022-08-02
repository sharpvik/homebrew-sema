class Sema < Formula
  desc "Semantic commit tool"
  homepage "https://github.com/sharpvik/sema#readme"
  url "https://github.com/sharpvik/sema/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "daf03a5febc1c4a64e606a73bc25073352423641d93496bd8d6421b6feb0e01b"
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
