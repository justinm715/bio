Bio::App.controller do

  get '/' do
    render 'index', layout: 'application'
  end

  get '/articles/:slug' do
    render 'layouts/application', layout: false do
      render 'layouts/article', layout: false do
        render "articles/#{params[:slug]}"
      end
    end
  end

end