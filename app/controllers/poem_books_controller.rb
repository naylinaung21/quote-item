class PoemBooksController < ApplicationController
    before_action :set_poem_book, only: [ :show, :edit, :update, :destroy]

    def index
        @poem_books = PoemBook.all
    end

    def show; end

    def new
        @poem_book = PoemBook.new
    end

    def create
        @poem_book = PoemBook.new(poem_book_params)

        if @poem_book.save
            respond_to do |format|
                format.html { redirect_to poem_books_path }
            end
        else
            render :new, status: :unprocessable_entity
        end        
    end

    def edit
    end

    def update
        if @poem_book.update(poem_book_params)
            respond_to do |format|
                format.html { redirect_to poem_books_path}
            end
        else
            render :edit, status: :unprocessable_entity
        end
    end
    

    def destroy
        @poem_book.destroy

        respond_to do |format|
            format.html { redirect_to poem_books_path}
        end
    end

    private

    def set_poem_book
        @poem_book = PoemBook.find(params[:id])
    end

    def poem_book_params
        params.require(:poem_book).permit(:name, :writer, :price)
    end
end
