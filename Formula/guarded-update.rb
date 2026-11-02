class GuardedUpdate < Formula
  desc "Nightly host updater that screens release notes and refuses risky updates"
  homepage "https://github.com/myers-gh1328/guarded-update"
  version "0.1.10"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b1a39504b1e9ae14015ff2ba55a8e0385a7f231f7605437049268c9cbc8140a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dbca749e3c4f606acfcb6f2154c5c022eee8bd34691ad3416f9d1ba6fb1176d"
    end
  end

  def install
    bin.install "guarded-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guarded-update --version")
  end
end
