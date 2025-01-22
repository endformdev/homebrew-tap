MAC_ARM_URL = "https://cli.endform.dev/0.2.0/endform-aarch64-apple-darwin/endform-aarch64-apple-darwin.tar.gz"
MAC_ARM_SHA = "c0cf75a5044936e945f70417bd02f76427af36edc4403465c2e7f7e34d72d140"
MAC_X86_URL = "https://cli.endform.dev/0.2.0/endform-x86_64-apple-darwin/endform-x86_64-apple-darwin.tar.gz"
MAC_X86_SHA = "236e0e092bef655d58656963df611dbcf41c0ff1e48b9e3025994b17634c0130"

LINUX_ARM_URL = "https://cli.endform.dev/0.2.0/endform-aarch64-unknown-linux-gnu/endform-aarch64-unknown-linux-gnu.tar.gz"
LINUX_ARM_SHA = "66decc1498087946932aea3fc831122edf87718ec039192c50ebeb0224e8bed1"
LINUX_X86_URL = "https://cli.endform.dev/0.2.0/endform-x86_64-unknown-linux-gnu/endform-x86_64-unknown-linux-gnu.tar.gz"
LINUX_X86_SHA = "25da54935f3e7fb5f69e8d77e8972c87823087e348658864365e72df8cd232b1"

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
