class Tb < Formula
  desc "Task board for Gradle: tick tasks, pick modules, run them in one build"
  homepage "https://github.com/cicerohellmann/taskboard"
  url "https://github.com/cicerohellmann/taskboard/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "cc8532f3f9862f80cf7853393c8b830f5a30a7818efa478f15829bb56cddc2a3"
  license "Unlicense"

  depends_on "fzf"

  def install
    bin.install "tb"
  end

  test do
    assert_match "Task Board (tb)", shell_output("#{bin}/tb help")
  end
end
