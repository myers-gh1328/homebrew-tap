class GuardedUpdate < Formula
  desc "Nightly host updater that screens release notes and refuses risky updates"
  homepage "https://github.com/myers-gh1328/guarded-update"
  version "0.1.9"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5326a6dfaaa8a528f77d50b46f62c219ad09725c1eef6d0ac652784951930e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ab2fc650fd82be263ec63490bede66feea9bb10b48e41843bae915a14fb0905"
    end
  end

  def install
    bin.install "guarded-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guarded-update --version")
  end
end
