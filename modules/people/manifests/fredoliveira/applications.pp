class people::fredoliveira::applications {
  include iterm2::dev
  include prezto
  include alfred

  include chrome
  include onepassword
  include transmit
  include dropbox
  include droplr
  include hipchat
  include source_code_pro
  include notational_velocity::nvalt
  include vlc

  include gitx::dev
  include sequel_pro
  include mysql
  include redis
  include java
  include elasticsearch
  include phantomjs

  # ------- sublime text setup -------

  include sublime_text_3
  include sublime_text_3::package_control

  sublime_text_3::package { 'Theme - Soda':
    source => 'buymeasoda/soda-theme'
  }

  sublime_text_3::package { 'Color Schemes by carlcalderon':
    source => 'carlcalderon/sublime-color-schemes'
  }

  sublime_text_3::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }
}