class Tuist < Formula
  desc "Generate, maintain, and interact with Xcode projects easily."
  homepage "https://github.com/tuist/tuist"
  url "https://github.com/tuist/tuist/raw/master/bin/tuistenv"
  #shasum -a 256 /tmp/1.iso
  sha256 "6769e784ade1a6c5726a71afc78b13dd1509f2b421deb6719fd2ff9ab796afda"

  def install
    system("#{buildpath}/scripts/build #{buildpath} #{include}")
    build_data = File.readlines("#{buildpath}/build.data")
    binary_path = build_data.select { |f| f.include?("binary:") }.map { |f| f.gsub("binary: ", "").strip }.first
    libraries_paths = build_data.select { |f| f.include?("library:") }.map { |f| f.gsub("library: ", "").strip }
    bin.install binary_path
    libraries_paths.each do |library_path|
      include.install library_path
    end
  end

  test do
    system "#{bin}/tuist", "local", "0.2.0"
  end

end