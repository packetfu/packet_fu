Gem::Specification.new do |s|
  s.name        = 'packet_fu'
  s.version     = "0.0.1"
  s.authors     = ['Tod Beardsley']
  s.email       = ['todb@packetfu.com']
  s.summary     = 'Packet_Fu just wraps PacketFu to avoid future squatters.'
  s.homepage    = 'https://github.com/packetfu/packetfu'
  s.description = %q{
    You probably don't want this. You probably want PacketFu.
  }
  s.files       = `git ls-files`.split($/)
  s.license     = 'BSD-3-Clause'
  s.required_ruby_version = '>= 2.1.0'
  s.add_dependency('packetfu', '~> 1.1')

  cert = File.expand_path("~/.ssh/gem-private_key.pem")

  if File.exist?(cert) and File.readable?(cert)
    s.signing_key = cert
    s.cert_chain = ['certs/todb-r7.pem']
  end

end
