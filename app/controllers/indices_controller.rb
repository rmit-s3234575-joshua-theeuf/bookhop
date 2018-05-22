class IndicesController < ApplicationController
  def index
    @index = Index.all
  end
end
