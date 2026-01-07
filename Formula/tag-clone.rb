class TagClone < Formula
  desc "Copy macOS file tags from JPG files to corresponding ARW files"
  homepage "https://github.com/yourusername/tag-clone"
  version "1.0.0"
  license "MIT"

  # For local development, use a file URL or update with your actual repo
  # url "https://github.com/yourusername/tag-clone/archive/refs/tags/v1.0.0.tar.gz"
  # sha256 "YOUR_SHA256_HERE"
  
  # For local installation during development:
  url "file://#{HOMEBREW_LIBRARY}/Taps/yourusername/homebrew-tools/tag-clone-1.0.0.tar.gz"
  sha256 "placeholder"

  depends_on "tag"
  depends_on :macos

  def install
    bin.install "bin/tag-clone"
  end

  test do
    assert_match "tag-clone version", shell_output("#{bin}/tag-clone --version")
  end
end
