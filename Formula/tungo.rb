class Tungo < Formula
  desc "Fast and secure VPN tunnel"
  homepage "https://github.com/NLipatov/TunGo"
  version "0.2.32"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-arm64"
      sha256 "32abe8e13d1aaa01f810358a7979cbf315d8ccd0f7752f45d2a2866b7ccffbb1"
    else
      url "https://github.com/NLipatov/TunGo/releases/download/#{version}/tungo-darwin-amd64"
      sha256 "733c572a898f8b48c03d3004c37e462a55f8b749cad5f1c398bf78d1b1746a36"
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
