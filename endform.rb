MAC_ARM_URL = "xxx"
MAC_ARM_SHA = "xxx"
MAC_X86_URL = "xxx"
MAC_X86_SHA = "xxx"

LINUX_ARM_URL = "xxx"
LINUX_ARM_SHA = "xxx"
LINUX_X86_URL = "xxx"
LINUX_X86_SHA = "xxx"

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
