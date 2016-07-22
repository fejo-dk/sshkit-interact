require 'sshkit/backends/netssh'
require 'sshkit/interact/command'

module SSHKit
  module Interact
    # Backend with interactivity
    class Backend < SSHKit::Backend::Netssh
      @pool = SSHKit::Backend::ConnectionPool.new

      def interact(*args, options: {})
        SSHKit::Interact::Command.new(host, command(args, options)).execute
      end
    end
  end
end
