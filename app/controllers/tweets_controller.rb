class TweetsController < ApplicationController
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  get '/tweets' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
     @tweets = Tweet.all
     erb :'tweets/tweets'
  end

  get '/tweets/new' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    @error = ""
    erb :'tweets/new'
  end

  get '/tweets/:id' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    @tweet = Tweet.find_by(id: params[:id])
    erb :'tweets/show_tweet'
  end



  post '/tweets' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    if params[:content] == ""
      @error = "Tweets can't be blank"
      erb :'tweets/new'
    else
      tweet = Tweet.create(content: params[:content], user_id: session[:user_id])
    redirect to '/tweets'
    end
  end

  get '/tweets/:id/edit' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    @tweet = Tweet.find_by(id: params[:id])
    @error = ""
    erb :'tweets/edit_tweet'
  end

  post '/tweets/:id' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    @tweet = Tweet.find_by(id: params[:id])
    if params[:content] == ""
      @error = "Can't edit a tweet to have no content"
      erb :'/tweets/edit_tweet'
    end
    @tweet.content = params[:content]
    @tweet.save
    erb :'tweets/show_tweet'
  end

  post '/tweets/:id/delete' do
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
=======
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    tweet = Tweet.find_by(id: params[:id])
    tweet.destroy
    redirect to '/tweets'
  end


end
