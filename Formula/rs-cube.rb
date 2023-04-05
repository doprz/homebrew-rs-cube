class RsCube < Formula
  desc "Blazingly fast 3D ASCII Rubik's Cube"
  homepage "https://github.com/doprz/rs-cube"
  url "https://github.com/doprz/rs-cube/archive/v1.0.2.tar.gz"
  sha256 "afc95208098776ee9d13b574928788f8c6d64381f033d467da03022d5ef20686"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"rs-cube", "--version"
  end
end
