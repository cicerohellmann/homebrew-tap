class Tb < Formula
  desc "Task board for Gradle: tick tasks, pick modules, run them in one build"
  homepage "https://github.com/cicerohellmann/taskboard"
  url "https://github.com/cicerohellmann/taskboard/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2e71ba524ee6ef4166c2aa48aca8f837a6fb1829c9c2f01d677600d7d6bd4f06"
  license "Unlicense"

  depends_on "fzf"

  def install
    bin.install "tb"
  end

  test do
    assert_match "Task Board (tb)", shell_output("#{bin}/tb help")
  end
end
