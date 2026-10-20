class GuardedUpdate < Formula
  desc "Nightly host updater that screens release notes and refuses risky updates"
  homepage "https://github.com/myers-gh1328/guarded-update"
  version "0.1.3"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5415050f2b6c317ffafa30479ca59f8451c840d6082bea392b1cfe4ee2f21f43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8cd034e0b3d76c3d91a1fda25af2bc3a9ca7591de7b8f6184ec428c1fe68cd86"
    end
  end

  def install
    bin.install "guarded-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guarded-update --version")
  end
end
