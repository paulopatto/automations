# https://www.vivaolinux.com.br/dica/Instalando-navegador-Google-Chrome-no-Fedora-27
# SE OS == Fedora
# Importe a chave pública do repositório: 	
sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub

#Adicione o repositório do navegador: 
sudo tee /etc/yum.repos.d/google-chrome.repo <<RPMREPO
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl.google.com/linux/linux_signing_key.pub
RPMREPO

# Instale o navegador Google Chrome Stable: 
sudo dnf install google-chrome-stable
# End
