class PokemonController < ApplicationController
  require 'net/http'

  uri = URI('https://pokeapi.co/api/v2/pokemon')
  request = Net::HTTP.get(uri)
  POKEMONS = JSON.parse(request)['results']

  def index
    @pokemons = POKEMONS
  end

  def show
    @pokemons.find_by(name: params[:name])
  end
end
