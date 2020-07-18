require "language/node"

class SfCli < Formula
  desc "Simple wrapper for Salesforce SFDX CLI"
  head "https://github.com/matiasdelgado/sf-cli.git", :branch => "main"
  homepage "https://github.com/matiasdelgado/sf-cli"
  sha256 "1a54f04a79744dfb52011ae0b5ddaafefcf405d7d6bb17f7e51c152d923e493c"
  url "https://registry.npmjs.org/sf-cli/-/sf-cli-3.1.0.tgz"
  version "3.1.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
