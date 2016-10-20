
class web (  $message ) {



 $doc_root = '/var/www'

 $text = 'Hello my Student number '


 file { "${doc_root}/index.html":
      ensure => file,
      content => template('web/index.html.erb'),

      }






}
