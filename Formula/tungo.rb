class Tungo < Formula
  desc "Fast and secure VPN tunnel"
  homepage "https://github.com/NLipatov/TunGo"
  version "0.3.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-arm64"
      sha256 "dfff1e71ab3fa25bac5abb26d4e854cb7244ef3bd32152220d05ec38cb354655"
    else
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-amd64"
      sha256 "8ac7a82523dde1392fdbd7b22d06ed12be1e94a4594c2d3259d7d8dd1fa9cb95"
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
