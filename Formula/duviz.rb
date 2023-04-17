
class Duviz < Formula
  include Language::Python::Virtualenv

  desc "Command-line disk space usage visualization utility"
  homepage "https://github.com/soxofaan/duviz"
  url "https://github.com/soxofaan/duviz/archive/refs/tags/v3.2.0.tar.gz"
  sha256 "6592f39928a0759419bfd7ea6740df85f9fd40df297af22e8910d07608a9933f"

  depends_on "python@3"

  def install
    virtualenv_install_with_resources(:using => "python@3")
  end

  test do
    mkdir "work"
    (testpath/"work/helloworld.txt").write("hello world")
    assert_equal "__________\n[  work  ]\n[___2____]", shell_output("#{bin}/duviz --no-progress -i --width=10 work").chomp
  end
end
