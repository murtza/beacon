defmodule Beacon.Loader.SafeCodeImpl do
  @behaviour SafeCode.Validator.Modules.Behaviour

  def safe_function?(:my_component), do: true
  def safe_function?(_), do: true

  # def safe_module_function?(_, :inner_content), do: true
  # def safe_module_function?(_, :val), do: true
  # def safe_module_function?(_, :nested_changed_assign?), do: true
  def safe_module_function?(_, _), do: true
end
