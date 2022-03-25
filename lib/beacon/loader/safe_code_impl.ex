defmodule Beacon.Loader.SafeCodeImpl do
  @behaviour SafeCode.Validator.Modules.Behaviour

  def safe_function?(:my_component), do: true
  def safe_function?(_), do: false

  def safe_module_function?(_, :inner_content), do: true
  def safe_module_function?(_, :val), do: true
  def safe_module_fuction?(Phoenix.LiveView.Engine, _), do: true
  def safe_module_function?(_, _), do: false
end
