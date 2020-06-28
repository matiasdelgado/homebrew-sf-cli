require "language/node"

class SfCli < Formula
  desc "Simple wrapper for Salesforce SFDX CLI"
  head "https://github.com/matiasdelgado/sf-cli.git", :branch => "main"
  homepage "https://github.com/matiasdelgado/sf-cli"
  sha256 "526a2a9885f4bd93c0b86852872511c8eb742db62ee0d6200fc95593b547e5d2"
  url "https://github.com/matiasdelgado/sf-cli/archive/v1.0.1.tar.gz"
  version "v1.0.1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
