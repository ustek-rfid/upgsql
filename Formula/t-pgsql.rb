# typed: false
# frozen_string_literal: true

class TPgsql < Formula
  desc "PostgreSQL database sync, backup and clone tool with notifications"
  homepage "https://github.com/Asimatasert/t-pgsql"
  url "https://github.com/Asimatasert/t-pgsql/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "3cf2a97e8ad1c0b74edc31aa9c78780afc74f9a66095d37dea5753764940c627"
  license "MIT"
  head "https://github.com/Asimatasert/t-pgsql.git", branch: "master"

  depends_on "postgresql"
  depends_on "curl"

  def install
    bin.install "t-pgsql"
  end

  test do
    assert_match "v3.1.0", shell_output("#{bin}/t-pgsql --version")
  end
end
