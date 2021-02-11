class FatcatCli < Formula
  version '0.1.0'
  desc "Interface to Fatcat Catalog API."
  homepage "https://gitlab.com/bnewbold/fatcat-cli"

  if OS.mac?
      url "https://archive.org/download/ia-fatcat-cli-bin/fatcat-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "70a187ccd8a76e970a88be6046adbea4fcbe68233bd8746da9cb38c74a2d0a2f"
  end

  def install
    bin.install "fatcat-cli"
    man1.install "doc/fatcat-cli.1"

    bash_completion.install "complete/fatcat-cli.bash"
    zsh_completion.install "complete/_fatcat-cli"
  end
end
