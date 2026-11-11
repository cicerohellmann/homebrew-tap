class Tb < Formula
  desc "Task board for Gradle: tick tasks, pick modules, run them in one build"
  homepage "https://github.com/cicerohellmann/taskboard"
  url "https://github.com/cicerohellmann/taskboard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "230e29c890260a9b0b3fa6deda166d28b266bcc1bfc4f82ce94759d5bb24405b"
  license "Unlicense"

  depends_on "fzf"

  def install
    bin.install "tb"
  end

  test do
    assert_match "Task Board (tb)", shell_output("#{bin}/tb help")
  end
end
