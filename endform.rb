MAC_ARM_URL = "https://cli.endform.dev/0.2.1/endform-aarch64-apple-darwin/endform-aarch64-apple-darwin.tar.gz"
MAC_ARM_SHA = "377f5c9f69f2ed8e5133197b8876046be6801e2de65ae734458b3ae0de9ae801"
MAC_X86_URL = "https://cli.endform.dev/0.2.1/endform-x86_64-apple-darwin/endform-x86_64-apple-darwin.tar.gz"
MAC_X86_SHA = "27160d1272163ab6206cd5e708de2dbb47618f16448e6e49b9f9c22b09bcd0ea"

LINUX_ARM_URL = "https://cli.endform.dev/0.2.1/endform-aarch64-unknown-linux-gnu/endform-aarch64-unknown-linux-gnu.tar.gz"
LINUX_ARM_SHA = "fdc3c356c22c43d8a09c4b1c178b0b672fee8c93ea2b5ab25d9a37f7aa523440"
LINUX_X86_URL = "https://cli.endform.dev/0.2.1/endform-x86_64-unknown-linux-gnu/endform-x86_64-unknown-linux-gnu.tar.gz"
LINUX_X86_SHA = "13cfdf9a879990b6509fbef34f433b5abf05d1d97bb3a432faffa738f974c07b"

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
