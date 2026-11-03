class HelmTui < Formula
  desc "Terminal UI for browsing and managing Helm repositories"
  homepage "https://github.com/vasyakrg/helm-tui"
  license "MIT"

  depends_on "helm"

  on_macos do
    on_arm do
      url "https://github.com/vasyakrg/helm-tui/releases/download/v1.1.0/helm-tui_1.1.0_darwin_arm64.tar.gz"
      sha256 "901e988eadcadae2d01e5dbd513bea7ceb2bd0574799f23c8d600df926f33933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vasyakrg/helm-tui/releases/download/v1.1.0/helm-tui_1.1.0_linux_arm64.tar.gz"
      sha256 "ef0b257e826e12e8cde3957d8320458aaca6a793dd1c1bcb086818a7eb5f5af4"
    end
    on_intel do
      url "https://github.com/vasyakrg/helm-tui/releases/download/v1.1.0/helm-tui_1.1.0_linux_amd64.tar.gz"
      sha256 "ba028c96660b24a13536a80d81500e1f6fcf0b4e8503c0a2f531f287801e59f4"
    end
  end

  def install
    bin.install "helm-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/helm-tui --version")
  end
end
