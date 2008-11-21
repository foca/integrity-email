require 'rubygems'
require 'integrity'
require 'diddies/mailer'

module Integrity
  class Notifier
    class Email < Notifier::Base
      attr_reader :to, :from
      
      def self.to_haml
        File.read File.dirname(__FILE__) / "config.haml"
      end

      def initialize(build, config={})
        @to     = config.delete("to")
        @from   = config.delete("from")
        super
        configure_mailer
      end

      def deliver!
        email.deliver!
      end

      def email
        @email ||= Sinatra::Mailer::Email.new(
          :to => to,
          :from => from,
          :text => body,
          :subject => subject
        )
      end
      
      def subject
        "[Integrity] #{build.project.name}: #{short_message}"
      end

      alias :body :full_message
      
      private

        def configure_mailer
          user = @config["user"]
          pass = @config["pass"]
          
          user = pass = nil if user.empty? && pass.empty?
          Sinatra::Mailer.delivery_method = "net_smtp"
          Sinatra::Mailer.config = {
            :host => @config["host"],
            :port => @config["port"],
            :user => user,
            :pass => pass,
            :auth => @config["auth"],
            :domain => @config["domain"]
          }
        end
    end
  end
end
