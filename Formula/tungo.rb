class Tungo < Formula
  desc "Fast and secure VPN tunnel"
  homepage "https://github.com/NLipatov/TunGo"
  version "0.3.22-11"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-arm64"
      sha256 "482b80191fec3faed05f96de8d6152f2d062518b0c0a12869eb0939450242824"
    else
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-amd64"
      sha256 "4c166a0401853a513ca0319c303263308e8949a2aeba872e8a2ecb94a070426b"
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
