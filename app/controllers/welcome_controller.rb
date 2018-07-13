class WelcomeController < ApplicationController
  def index
    @tours = Tour.all.order('id DESC').limit(3)
  end

  def noticias
  	@news = News.all.order('id DESC')
  end

  def fanzone
  	@fans = Fan.all.order('id DESC')
  end

  def biografia
  	
  end

  def videos
  	@videos = Video.all.order('id DESC')
  end

  def musica
  	@musics = Music.all.order('id DESC')
  end

  def tour
  	@tours = Tour.all.order('id DESC')
  end


  def galeria
    @galleries = Gallery.all.order('id DESC')
  end
end
