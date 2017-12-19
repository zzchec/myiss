powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

template  'C:\inetpub\wwwroot\Default.htm' do
  source 'default.htm.erb'
end

service 'w3svc' do
  action [:enable, :start]
end
