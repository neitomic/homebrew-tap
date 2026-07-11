class Mdprev < Formula
  desc "Fast, lightweight local Markdown preview server"
  homepage "https://github.com/neitomic/mdprev"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/neitomic/mdprev/releases/download/v0.1.1/mdprev-aarch64-apple-darwin.tar.gz"
    sha256 "e78c8b183b9b6efbf66ac593552cf0960e2f0ce4fe0d6b5c6ff3d113f40e39c5"
  else
    url "https://github.com/neitomic/mdprev/releases/download/v0.1.1/mdprev-x86_64-apple-darwin.tar.gz"
    sha256 "9395d659cee596117158eefdc80253679af12336a3c711bbcbb4ba07970097de"
  end

  def install
    bin.install "mdprev"
  end

  test do
    assert_match "Fast local markdown preview server", shell_output("#{bin}/mdprev --help")
  end
end
