FROM gitpod/workspace-full

# Install Ruby
RUN asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
RUN asdf install ruby 2.6.8
RUN asdf global ruby 2.6.8

# Install Node.js
RUN asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN asdf install nodejs 14.17.0
RUN asdf global nodejs 14.17.0

# Install Yarn
RUN npm install -g yarn

# Install Rails
RUN gem install nokogiri -- --use-system-libraries
RUN gem install rails -v 6.0.3.4
