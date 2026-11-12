class Tb < Formula
  desc "Task board for Gradle: tick tasks, pick modules, run them in one build"
  homepage "https://github.com/cicerohellmann/taskboard"
  url "https://github.com/cicerohellmann/taskboard/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a9f5911eeec63e02370c23b3276c9161d12da52766616ff07a032c493213ef8b"
  license "Unlicense"

  depends_on "fzf"

  def install
    bin.install "tb"
  end

  test do
    assert_match "Task Board (tb)", shell_output("#{bin}/tb help")
  end
end
