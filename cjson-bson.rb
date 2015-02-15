require "formula"

class CjsonBson < Formula
  homepage "http://github.com/vibraphone/cjson-bson"
  head "https://github.com/vibraphone/cjson-bson.git"

  depends_on "cmake" => :build

  def install
    args = std_cmake_args + %W[
      -DBUILD_SHARED_LIBS=ON
    ]

    mkdir "build" do
      args << ".."

      system "cmake", *args
      system "make"
      system "make", "install"
    end
  end
end
