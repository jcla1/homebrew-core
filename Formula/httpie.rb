class Httpie < Formula
  include Language::Python::Virtualenv

  desc "User-friendly cURL replacement (command-line HTTP client)"
  homepage "https://httpie.io/"
  url "https://files.pythonhosted.org/packages/53/96/cbcfec73c186f076e4443faf3d91cbbc868f18f6323703afd348b1aba46d/httpie-2.6.0.tar.gz"
  sha256 "ef929317b239bbf0a5bb7159b4c5d2edbfc55f8a0bcf9cd24ce597daec2afca5"
  license "BSD-3-Clause"
  head "https://github.com/httpie/httpie.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "83aab05ffbcd4c3baa6de6158d57ebdaa67c148bef8c872527d90bdaebff0504"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "3c3a5c2458d0658e14b663495e115297c573aa3466d292f12d02c3ec13a24bdf"
    sha256 cellar: :any_skip_relocation, monterey:       "f860e7d3b77dca4928a2c5e10c4cbd50d792330dfb99f7d736ca0da9fb9dd0d0"
    sha256 cellar: :any_skip_relocation, big_sur:        "377b0643aa1f6d310ba4cfc70d66a94cc458213db8d134940d3b10a32defacf1"
    sha256 cellar: :any_skip_relocation, catalina:       "6d306c30f6f1d7a551d88415efe12b7c3f25d0602f3579dc632771a463f78fa5"
    sha256 cellar: :any_skip_relocation, mojave:         "f66b8cdff9cb7b44a84197c3e3d81d810f7ff8f2188998b977ccadfc7e2ec893"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "53f036b0114814c28982e8c022dcf494e7024de088641d7076fd73d12a45a0e9"
  end

  depends_on "python@3.10"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/9f/c5/334c019f92c26e59637bb42bd14a190428874b2b2de75a355da394cf16c1/charset-normalizer-2.0.7.tar.gz"
    sha256 "e019de665e2bcf9c2b64e2e5aa025fa991da8720daa3c1138cadd2fd1856aed0"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz"
    sha256 "f398865f7eb6874156579fdf36bc840a03cab64d1cde9e93d68f46a425ec52c6"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/bd/11/293dd436aea955d45fc4e8a35b6ae7270f5b8e00b53cf6c024c83b657a11/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/28/30/7bf7e5071081f761766d46820e52f4b16c8a08fef02d2eb4682ca7534310/requests-toolbelt-0.9.1.tar.gz"
    sha256 "968089d4584ad4ad7c171454f0a5c6dac23971e9472521ea3b6d49d610aa6fc0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar.gz"
    sha256 "4987c65554f7a2dbf30c18fd48778ef124af6fab771a377103da0585e2336ece"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    raw_url = "https://raw.githubusercontent.com/Homebrew/homebrew-core/HEAD/Formula/httpie.rb"
    assert_match "PYTHONPATH", shell_output("#{bin}/http --ignore-stdin #{raw_url}")
  end
end
