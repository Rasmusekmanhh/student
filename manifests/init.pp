class student { 
	package { 'libreoffice':
		ensure => 'installed',
		allowcdrom => true,
	}
	
	package { 'vlc':
                ensure => 'installed',
                allowcdrom => true,
        }

	package { 'geogebra':
                ensure => 'installed',
                allowcdrom => true,
        }
	
	package { 'gimp':
                ensure => 'installed',
                allowcdrom => true,
        }

	package { 'audacity':
                ensure => 'installed',
                allowcdrom => true,
        }

	package { 'libreoffice-l10n-fi':
		ensure => 'installed',
		allowcdrom => true,
	}

	file { '/etc/firefox/ssyspref.conf':
		content => template('student/ssyspref.js'),
		require => Package['firefox'],
	}
}
