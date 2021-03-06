requires 'perl', 'v5.10.1';

on 'test' => sub {
    requires 'App::Cmd::Tester';
    requires 'Dancer::Test';
    requires 'Devel::Cover';
    requires 'File::Path';
    requires 'File::Slurp';
    requires 'IO::File';
    requires 'Test::Code::TidyAll', '0.20';
    requires 'Test::Exception', '0.43';
    requires 'Test::Lib';
    requires 'Test::More';
    requires 'Test::Net::LDAP';
    requires 'Test::Pod';
    requires 'Test::TCP';
    requires 'Test::WWW::Mechanize::Dancer';
    requires 'Module::Install', '1.16';
};

requires 'Business::ISBN', 0;

# Fixing broken JSON::Validator error handling
requires 'JSON::Validator','<=3.14';

# Catmandu
requires 'Catmandu', '>=1.2002';
requires 'Catmandu::FileStore', '1.13';
requires 'Catmandu::ArXiv', '0.211';
requires 'Catmandu::BagIt' , '0.234';
requires 'Catmandu::BibTeX', '>=0.14';
requires 'Catmandu::DBI', '>=0.09';
requires 'Catmandu::Exporter::Table';
requires 'Catmandu::Fix::Date';
requires 'Catmandu::Identifier', '>=0.05';
requires 'Catmandu::Importer::getJSON' , '>=0.51';
requires 'Catmandu::LDAP';
requires 'Catmandu::OAI' , '0.16';
requires 'Catmandu::RIS', '>=0.04';
requires 'Catmandu::SRU','0.039';
requires 'Catmandu::Store::ElasticSearch', '>=1.0';
requires 'Catmandu::Validator::JSONSchema','0.11';
requires 'Catmandu::XML';
requires 'Search::Elasticsearch', '>=6.00';
requires 'Search::Elasticsearch::Client::6_0';

# Mojolicious
requires 'Mojolicious', '>=7.70';
requires 'Mojolicious::Plugin::TemplateToolkit', '>=0.005';

#Dancer
requires 'Dancer';
requires 'Dancer::Plugin';
requires 'Dancer::FileUtils';
requires 'Dancer::Plugin::Catmandu::OAI', '>=0.0502';
requires 'Dancer::Plugin::Catmandu::SRU', '0.0403';
requires 'Dancer::Plugin::Auth::Tiny';
requires 'Dancer::Plugin::StreamData';
requires 'Dancer::Logger::Log4perl';
requires 'Dancer::Plugin::FlashMessage';
requires 'Dancer::Session::PSGI';
requires 'Template';
requires 'Template::Plugin::Date';
requires 'Template::Plugin::JSON::Escape', '0.02';
requires 'Template::Plugin::Gravatar';
requires 'Furl';
requires 'HTML::Entities';
requires 'Syntax::Keyword::Junction';

#Plack
requires 'Plack';
requires 'Plack::Middleware::ReverseProxy';
requires 'Dancer::Middleware::Rebase';
requires 'Plack::Middleware::Deflater';
requires 'Plack::Middleware::Negotiate', '>= 0.20';
requires 'Plack::Middleware::Debug';
requires 'Plack::Middleware::Debug::Dancer::Settings';
requires 'Plack::Middleware::Session';
requires 'Plack::Session::Store::Catmandu', '>= 0.03';
requires 'Starman';

# others
requires 'all';
requires 'AnyEvent','7.13';
requires 'AnyEvent::HTTP','2.23';
requires 'App::bmkpasswd', '2.010001';
requires 'Autoload::AUTOCAN', '0.005';
requires 'Business::ISBN10';
requires 'Business::ISBN13';
requires 'Clone';
requires 'Code::TidyAll', 0;
requires 'Config::Onion', '>= 1.007';
requires 'Crypt::Digest::MD5';
requires 'Crypt::JWT';
requires 'Crypt::SSLeay';
requires 'Data::Uniqid';
requires 'DateTime';
requires 'DBD::mysql', '>= 4.037';
requires 'DBD::SQLite';
requires 'Devel::REPL', '>= 1.003028';
requires 'Email::Sender::Simple';
requires 'Encode';
requires 'File::Basename';
requires 'Gearman::XS', '0.15';
requires 'Getopt::Long';
requires 'IO::All';
requires 'JSON::MaybeXS';
requires 'Locale::Maketext';
requires 'Locale::Maketext::Lexicon';
requires 'Log::Any::Adapter';
requires 'Log::Any::Adapter::Log4perl';
requires 'Log::Log4perl';
requires 'MIME::Types','==1.38';
requires 'Moo', '>= 2.003004';
requires 'Net::LDAP';
requires 'Net::LDAPS';
requires 'Net::Telnet::Gearman';
requires 'Path::Tiny', '0.052';
requires 'Proc::Launcher', '0.0.35';
requires 'REST::Client';
requires 'String::CamelCase';
requires 'Term::ReadKey';
requires 'Type::Tiny', '>= 1.002001';
requires 'URL::Encode';
requires 'XML::RSS';
requires 'YAML';
requires 'YAML::XS';
requires 'Plack::Auth::SSO','0.0132';
requires 'Plack::Middleware::MethodOverride';
requires 'Date::Simple';
requires 'Tie::IxHash', '1.23';
