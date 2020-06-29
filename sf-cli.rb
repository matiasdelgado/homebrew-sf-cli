require "language/node"

class SfCli < Formula
  desc "Simple wrapper for Salesforce SFDX CLI"
  head "https://github.com/matiasdelgado/sf-cli.git", :branch => "main"
  homepage "https://github.com/matiasdelgado/sf-cli"
  sha256 "22dbddcca279dd1e73a61ce451d673dce1ee5bde1485dc9b1541360f0dd380df"
  url "https://github.com/matiasdelgado/sf-cli/archive/v1.0.2.tar.gz"
  version "v1.0.2"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
