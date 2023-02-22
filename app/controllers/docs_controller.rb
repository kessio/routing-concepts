class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def show
   
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      redirect_to docs_path, notice: "The #{@doc.name} has been uploaded"

  end

  private
  def doc_params
    params.require(:doc).permit(:name, :attachment)
  end
end
