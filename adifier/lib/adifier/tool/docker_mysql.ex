defmodule Adifier.Tool.DockerMysql do
  @moduledoc """
  """

  use Adifier.Tool, name: "docker_mysql"


  @impl true
  def install_cmd(:mac) do
    """
    docker run -d --name mysql --restart unless-stopped -p 127.0.0.1:3306:3306 \
    -v /mysql-data:/var/lib/mysql -v /mysql-conf:/etc/mysql -e \
    MYSQL_ROOT_PASSWORD=password mysql:5.7 --datadir=/var/lib/mysql \
    --user=mysql \
    --server-id=1 \
    --log-bin=/var/lib/mysql/mysql-bin.log \
    --binlog_do_db=test'
    """
  end

  @impl true
  def install_cmd(_os) do
    raise "Only implemented for mac"
  end
end
