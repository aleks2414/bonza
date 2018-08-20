class WelcomeController < ApplicationController
  def index
    @tours = Tour.all.order('id DESC').limit(3)
  end

  def noticias
  	@news = News.all.order('fecha DESC').where(:disponible => true)
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
  	@musics = Music.all.order('id DESC').where(:disponible => true)
    @videos = Video.all.order('id DESC').where(:disponible => true)
  end

  def tour
  	@tours = Tour.all.order('fecha_inicio DESC').where(:disponible => true)
  end


  def galeria
    @galleries = Gallery.all.order('id DESC')
  end
end
