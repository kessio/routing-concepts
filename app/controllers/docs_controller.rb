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

    respond_to do |format|
      format.html do
        if @doc.save
          redirect_to docs_path
        else
          redirect_to new_doc_path
        end
      end
    end

  end

  private
  def doc_params
    params.require(:doc).permit(:name, :attachment)
  end
end
