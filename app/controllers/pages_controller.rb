class PagesController < ApplicationController
  def home
  end

  def about_us
  end

  def index
  end

  def get_the_app
  end

  def how_it_works
  end

  def experience
  end

  def help
  end

  def contact
    @members = ["massi", "peter", "fernando"]

    #prima faccio il check se l'utente submit il form:
    # se l'utente scrive params[:member], c9oe il nome che vuole cercare tipo Massi, allora mi ridai quel nome che sarà selezionato dalla lista @members tramite metodo select.
     if params[:member] #Massi
      @members = @members.select { |member| member.start_with?(params[:member])}
    end
  end

end
