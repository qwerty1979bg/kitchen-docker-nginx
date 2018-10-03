control 'check_nginx' do

  describe package('nginx') do
    it { should be_installed }
  end

end

