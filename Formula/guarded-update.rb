class GuardedUpdate < Formula
  desc "Nightly host updater that screens release notes and refuses risky updates"
  homepage "https://github.com/myers-gh1328/guarded-update"
  version "0.1.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3c43abda8ffd398ace806a11bc0f2811218a88cdd782e1fd191d865b7a8d4937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myers-gh1328/guarded-update/releases/download/v#{version}/guarded-update-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8a2c577dd7a67c070a9355bf8002c0d896092fbd6ede8941e2125cff2d33d6e"
    end
  end

  def install
    bin.install "guarded-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guarded-update --version")
  end
end
