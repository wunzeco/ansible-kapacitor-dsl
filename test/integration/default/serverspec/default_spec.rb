require 'spec_helper'

kapacitor_dsl_work_dir = '/usr/local/kapacitor'

describe file('/usr/local/kapacitor') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_mode 755 }
end

%W(
  #{kapacitor_dsl_work_dir}/cpu_alert.tick
  #{kapacitor_dsl_work_dir}/mem_alert.tick
  #{kapacitor_dsl_work_dir}/disk_alert.tick
).each do |f|
  describe file(f) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_mode 644 }
  end
end

describe command('kapacitor show cpu_alert') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match %r(digraph cpu_alert) }
end
