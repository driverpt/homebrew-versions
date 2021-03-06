cask 'gogland-eap' do
  version '1.0,171.3780.106'
  sha256 '6b700b1437304e1e58ea3d1f866b2b3545cc83642bcc9a727887f9e0c998a097'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  conflicts_with cask: 'gogland'

  app "Gogland #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ]
end
