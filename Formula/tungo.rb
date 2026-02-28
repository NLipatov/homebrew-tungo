class Tungo < Formula
  desc "Fast and secure VPN tunnel"
  homepage "https://github.com/NLipatov/TunGo"
  version "0.3.12"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-arm64"
      sha256 "e71d1a08230daa4dfcaea6152de67842851ee517b17003a1e8e96d3c71bdf683"
    else
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-amd64"
      sha256 "93e8f36da936cb08fc8c6c50290c1757491c512498e71f4d79002999aed037d2"
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
