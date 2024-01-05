class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :show_record_errors
 
    private
    def record_not_found(exception)
        render template: 'application/not_found', status: :not_found, locals: {exception: exception}
    end

    def show_record_errors(exception)
        render template: 'application/unprocessable_entity', status: :unprocessable_entity, locals: {exception: exception}
    end
end
