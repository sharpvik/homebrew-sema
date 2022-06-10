class Sema < Formula
  desc "Semantic commit tool"
  homepage "https://github.com/sharpvik/sema#readme"
  url "https://github.com/sharpvik/sema/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4d304e6ac271aebd155260afaf94aebfddf43a2d8d9aad0c77b5cba15656ce6f"
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
