require "language/node"

class SfCli < Formula
  desc "Simple wrapper for Salesforce SFDX CLI"
  head "https://github.com/matiasdelgado/sf-cli.git", :branch => "main"
  homepage "https://github.com/matiasdelgado/sf-cli"
  sha256 "41001ae6b6b2d4583410e4c5b8dec00eb74fc53095bf2e66686613439b95b407"
  url "https://github.com/matiasdelgado/sf-cli/archive/v0.1.0-beta.tar.gz"
  version "v0.1.0-beta"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
