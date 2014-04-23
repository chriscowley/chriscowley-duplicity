require 'spec_helper'

describe 'duplicity' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "duplicity class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('duplicity') }
        it { should contain_class('duplicity::params') }
        it { should contain_class('duplicity::install').that_comes_before('duplicity::config') }
        it { should contain_class('duplicity::config').that_comes_before('duplicity::cron') }
        it { should contain_class('duplicity::cron') }

        it { should contain_package('duplicity').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'duplicity class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('duplicity') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
