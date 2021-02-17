class FatcatCli < Formula
  version '0.1.1'
  desc "Interface to Fatcat Catalog API."
  homepage "https://gitlab.com/bnewbold/fatcat-cli"

  if OS.mac?
      url "https://archive.org/download/ia-fatcat-cli-bin/fatcat-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "054514a7813cf73acde4e3109194ee9f31c40da9449956930cb1f5df5722a5e0"
  end

  def install
    bin.install "fatcat-cli"
    man1.install "doc/fatcat-cli.1"

    bash_completion.install "complete/fatcat-cli.bash"
    zsh_completion.install "complete/_fatcat-cli"
  end
end
