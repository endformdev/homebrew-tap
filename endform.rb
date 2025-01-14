MAC_ARM_URL = "https://cli.endform.dev/0.1.0/endform-aarch64-apple-darwin/endform-aarch64-apple-darwin.tar.gz"
MAC_ARM_SHA = "c4e8e5c7118d81f3aa52379dcd1aaf73665cb87c95a612374f263476ee83d076"
MAC_X86_URL = "https://cli.endform.dev/0.1.0/endform-x86_64-apple-darwin/endform-x86_64-apple-darwin.tar.gz"
MAC_X86_SHA = "3376e989093a9717c88e5b007420b66de4ff7370dcf5dd49bc31722397f43847"

LINUX_ARM_URL = "https://cli.endform.dev/0.1.0/endform-aarch64-unknown-linux-gnu/endform-aarch64-unknown-linux-gnu.tar.gz"
LINUX_ARM_SHA = "aa6e47d3c889b8131bc5ae44a62c0a61eaa53b25f9c43dd92afa46bd268d3baf"
LINUX_X86_URL = "https://cli.endform.dev/0.1.0/endform-x86_64-unknown-linux-gnu/endform-x86_64-unknown-linux-gnu.tar.gz"
LINUX_X86_SHA = "519474626b78538a93ebbbe4e53bfdcdf9e62ba49f820b842ca1396a3a198c96"

class Endform < Formula
  desc "Ship with confidence - run your end-to-end tests in record time"
  homepage "https://endform.dev"
  license "Proprietary"

  if OS.mac?
    if Hardware::CPU.arm?
      url MAC_ARM_URL
      sha256 MAC_ARM_SHA
    elsif Hardware::CPU.intel?
      url MAC_X86_URL
      sha256 MAC_X86_SHA
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url LINUX_ARM_URL
      sha256 LINUX_ARM_SHA
    elsif Hardware::CPU.intel?
      url LINUX_X86_URL
      sha256 LINUX_X86_SHA
    end
  end

  def install
    bin.install 'endform'
  end
end
