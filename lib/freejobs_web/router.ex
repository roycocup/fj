defmodule FreejobsWeb.Router do
  use FreejobsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FreejobsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    
    resources "/admins", AdminController

    resources "/users", UserController

    resources "/posts", PostController  

  end

  # Other scopes may use custom stacks.
  # scope "/api", FreejobsWeb do
  #   pipe_through :api
  # end
end
