class Cast < Formula
    desc "Corsha API Assessment Tool"
    homepage "https://github.com/corshatech/cast"
    url "https://github.com/corshatech/cast.git",
        tag:        "v0.1.0-rc.10",
        revision:   "c76ffc55c5c212785cc28e88d980370d3e0e4896"
    license "Apache-2.0"
    head "https://github.com/corshatech/cast.git", branch: "main"

    depends_on "go" => :build

    def install
        # Don't dirty the git tree
        rm_rf ".brew_home"

        system "make", "cast"
        bin.install "build/package/cast"
    end
end
