VERSION=$(npm view sf-cli dist-tags.latest)
SHA256=$(npm view sf-cli dist.shasum)

sed -e"s/VERSION/$VERSION/g" -e"s/SHA256/$SHA256/g" ./scripts/sf-cli.template > ./sf-cli.rb

