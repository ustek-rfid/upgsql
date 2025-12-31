# typed: false
# frozen_string_literal: true

class TPgsql < Formula
  desc "PostgreSQL database sync, backup and clone tool with notifications"
  homepage "https://github.com/Asimatasert/t-pgsql"
  url "https://github.com/Asimatasert/t-pgsql/archive/refs/tags/v3.2.0.tar.gz"
  sha256 "4253ace1a7393efeecd771d6b919b4ae506f150534e12672f88a3060d82745fd"
  license "MIT"
  head "https://github.com/Asimatasert/t-pgsql.git", branch: "master"

  depends_on "postgresql"
  depends_on "curl"

  def install
    bin.install "t-pgsql"
  end

  test do
    assert_match "v3.2.0", shell_output("#{bin}/t-pgsql --version")
  end
end
