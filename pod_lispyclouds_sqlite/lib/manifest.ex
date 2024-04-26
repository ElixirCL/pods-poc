defmodule Pod.LispyClouds.SQLite.Manifest do
  @moduledoc """
  Stores the information for the pod
  """

  @doc """
    Returns the namespace that will be used when invoking the commands
    Example: pod.lispyclouds.sqlite/execute!
  """
  def namespace, do: "pod.lispyclouds.sqlite"

  @doc """
  Which format will the payload be encoded/decoded:
  - json
  - transit+json
  """
  def format, do: "json"

  @doc """
  Which programming language this pod is implemented
  """
  def language, do: "python"

  @doc """
    The executable artifact that will be returned
    depending on the requested os and arch params.
    values are from :os.type() and :erlang.system_info(:system_architecture)
  """
  def executable(%{type: _type, os: _os, arch: _arch}),
    do:
      Path.expand(
        Path.join([
          Path.dirname(__ENV__.file),
          "..",
          "artifacts",
          "main.py"
        ])
      )
end
