message ModuleExpectedName do
  title "Syntax Error"

  block do
    text "I was looking for the"
    bold "name of a module"
    text "but found"
    code got
    text "instead."
  end

  block do
    text "The name of a module must start with an uppercase letter and only"
    text "contain lowercase, uppercase letters and numbers."
  end

  snippet node
end
