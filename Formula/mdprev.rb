class Mdprev < Formula
  desc "Fast, lightweight local Markdown preview server"
  homepage "https://github.com/neitomic/mdprev"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/neitomic/mdprev/releases/download/v0.1.0/mdprev-aarch64-apple-darwin.tar.gz"
    sha256 "b3b7aa45f80560c44c235930919c693fde704991ce579b885af5b38d80e10f50"
  else
    url "https://github.com/neitomic/mdprev/releases/download/v0.1.0/mdprev-x86_64-apple-darwin.tar.gz"
    sha256 "c9ab3c2fd0756904b6732b3de666bd9eff15c52819ef7d7276592b0f98d85b0f"
  end

  def install
    bin.install "mdprev"
  end

  test do
    assert_match "Fast local markdown preview server", shell_output("#{bin}/mdprev --help")
  end
end
