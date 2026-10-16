class GuardedUpdate < Formula
  desc "Nightly host updater that screens release notes and refuses risky updates"
  homepage "https://github.com/myers-gh1328/guarded-update"
  version "0.1.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ca931e3aac50c3702298493e72f335ab698937ee2f67ec7d9a4412671cf1d609"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9169e71b4b6fe4877924cb65c0964ea6763bc61370cf3a7b7072b7369a004152"
    end
  end

  def install
    bin.install "guarded-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guarded-update --version")
  end
end
