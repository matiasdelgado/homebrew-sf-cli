require "language/node"

class SfCli < Formula
  desc "Simple wrapper for Salesforce SFDX CLI"
  head "https://github.com/matiasdelgado/sf-cli.git", :branch => "main"
  homepage "https://github.com/matiasdelgado/sf-cli"
  sha256 "7776c95dea9ed0ff39644acbc524f3ab4b2007eb5a8e80c732cab0e18138c111"
  url "https://registry.npmjs.org/sf-cli/-/sf-cli-3.0.0.tgz"
  version "3.0.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
