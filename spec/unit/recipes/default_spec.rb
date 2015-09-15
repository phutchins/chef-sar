#
# Cookbook Name:: sar
# Spec:: default
#
# Copyright (c) 2015, Lincoln Abbey <linc.abbey@gmail.com>

require 'spec_helper'

describe 'sar::default' do
  context 'When all attributes are default, on an unspecied platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end

# EOF
