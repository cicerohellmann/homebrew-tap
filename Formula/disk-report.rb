class DiskReport < Formula
  desc "Find out what's eating your disk space — native desktop app with charts and treemaps"
  homepage "https://github.com/cicerohellmann/disk-report"
  url "https://github.com/cicerohellmann/disk-report.git", tag: "v0.4.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "disk-report", shell_output("#{bin}/disk-report --help")
  end
end
