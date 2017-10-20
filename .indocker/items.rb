Indocker.define_network 'tutorial_network'

Indocker.define_image :rails_app do
  from 'ruby:2.3.1'
  
  workdir '/app'

  copy '.' => '/app'

  run 'gem install bundler'
  run 'bundle isntall'

  entrypoint ['entrypoint.sh']

  cmd ['bundle exec rails server']
end

Indocker.define_image :tutorial_postgres do
  from 'postgres:9.3'
end

Indocker.define_container :tutorial_postgres do
  use images.tutorial_postgres
  use networks.tutorial_network

  ready sleep: 0.1, timeout: 10 do
    sleep 5

    true
  end
end

Indocker.define_container :rails_app do
  use images.rails_app
  use networks.tutorial_network

  depends_on containers.get_by_name(:tutorial_postgres)

  ports '3000/tcp:3000'
end