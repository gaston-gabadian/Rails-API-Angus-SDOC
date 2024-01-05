class DocsController < ApplicationController
    include ActionController::MimeResponds

    # GET /docs/:version
    def show
        respond_to do |format|
            format.html { render html: Angus::SDoc::HtmlFormatter.format_service(SdocDefinition).html_safe }
            format.json { render json: Angus::SDoc::JsonFormatter.format_service(SdocDefinition) }
        end
    end
  end
  