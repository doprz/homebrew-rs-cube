class RsCube < Formula
  desc "Blazingly fast 3D ASCII Rubik's Cube"
  homepage "https://github.com/doprz/rs-cube"
  url "https://github.com/doprz/rs-cube/archive/v1.0.0.tar.gz"
  sha256 "41d61db5c9f7c048cc2cdf9a288d3861c15386349556f32863e94f07bd53824a"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"rs-cube", "--version"
  end
end
