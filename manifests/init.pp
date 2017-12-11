class student { 

	exec { 'apt-get update':
		command => '/usr/bin/apt-get update',
		refreshonly => true,
	}
	
	package { 'firefox':
		ensure => 'latest',
		allowcdrom => true,
     	}
	
	package { 'libreoffice':
		ensure => 'latest',
		allowcdrom => true,
	}
	
	
	package { 'vlc':
                ensure => 'latest',
                allowcdrom => true,
        }

	package { 'geogebra':
                ensure => 'latest',
                allowcdrom => true,
        }
	
	package { 'gimp':
                ensure => 'latest',
                allowcdrom => true,
        }

	package { 'audacity':
                ensure => 'latest',
                allowcdrom => true,
        }

	package { 'libreoffice-l10n-fi':
		ensure => 'latest',
		allowcdrom => true,
	}

	file { '/etc/firefox/syspref.js':
		content => template('student/ssyspref.js'),
	}
}
