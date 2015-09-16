#
# Cookbook Name:: sar
# Spec:: default
#
# Copyright (c) 2015, Philip Hutchins <flipture@gmail.com>

$LOAD_PATH << File.expand_path(File.dirname(__FILE__) + '/../..')
require 'spec_helper'

describe 'sar::default' do
  context 'When all attributes are default, on an unspecied platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs the sysstat package' do
      expect(chef_run).to install_package('sysstat')
    end

    it 'creates config file /etc/default/sysstat' do
      expect(chef_run).to create_template('/etc/default/sysstat').with(
        user: 'root',
        group: 'root',
        mode: 0644
      )
    end

    it 'creates config file /etc/cron.d/sysstat' do
      expect(chef_run).to create_template('/etc/cron.d/sysstat').with(
        user: 'root',
        group: 'root',
        mode: 0644
      )
    end
  end
end

# EOF
