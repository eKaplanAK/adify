defmodule Adifier.Tool.DockerPostgres do
  @moduledoc """
  """

  use Adifier.Tool, name: "docker_postgres"


  @impl true
  def install_cmd(:mac) do
    """
    docker run --name postgres --restart unless-stopped -p 5432:5432 -e \
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -d -v \
    /tmp/postgresdata:/var/lib/postgresql/data postgres:9.3.23
    """
  end

  @impl true
  def install_cmd(_os) do
    raise "Only implemented for mac"
  end
end
