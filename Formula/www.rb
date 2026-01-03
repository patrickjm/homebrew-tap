class Www < Formula
  desc "CLI for persistent browser profiles and web automation"
  homepage "https://github.com/patrickjm/www"
  head "https://github.com/patrickjm/www.git", branch: "main"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"www", "./cmd/www"
  end

  test do
    system "#{bin}/www", "--help"
  end
end
