defmodule ApiWeb.ErrorView do
  use ApiWeb, :view

  def render("404.json", _assigns) do
    %{errors: %{detail: "Endpoint not found!"}}
  end

  def render("422.json", _assigns) do
    %{errors: %{detail: "Bad request, sorry :("}}
  end

  def render("500.json", _assigns) do
    %{errors: %{detail: "Internal server error, sorry :("}}
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render("500.json", assigns)
  end
end
