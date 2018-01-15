module KmsRails
  class << self
    attr_accessor :configuration
  end

  def initialize
   self.configuration ||= Configuration.new
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  def self.reset_config
    self.configuration = Configuration.new
  end

  class Configuration
    attr_accessor :fake_kms_api, :alias_prefix

    def initialize
      @fake_kms_api = false
      @alias_prefix = ''
    end
  end
end
