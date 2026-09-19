class Tungo < Formula
  desc "Fast and secure VPN tunnel"
  homepage "https://github.com/NLipatov/TunGo"
  version "0.3.41"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-arm64"
      sha256 "f683744727358ded83de01f0d45812eaa765e2825045a541c2b7d7891f6a073b"
    else
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-amd64"
      sha256 "22581e8cc72e7eef3da84afe3c5c957a50ed0f44b122e8144e2fcdae19343968"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "tungo-darwin-arm64" => "tungo"
    else
      bin.install "tungo-darwin-amd64" => "tungo"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tungo version")
  end
end
