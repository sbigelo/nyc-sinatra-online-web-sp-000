class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

end
