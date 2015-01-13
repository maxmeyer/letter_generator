Given(/^a letter named "(.*?)" does not exist$/) do |name|
  in_current_dir do
    FileUtils.rm_f name
  end
end

Then(/^a letter named "(.*?)" should exist$/) do |name|
  step %(a file named "#{name}.tex" should exist)
end

Given(/^the default letter template$/) do
  step %(a letter template named "letter" with:), File.read(File.expand_path('../../templates/letter.tex.tt', __FILE__))
end

Given(/^a letter template named "(.*?)" with:$/) do |name, string|
  step %(a file named "~/.config/letter_generator/templates/#{name}.tex.tt" with:), string
end

Given(/^a config file named "(.*?)" with:$/) do |name, string|
  step %(a file named "~/.config/letter_generator/#{name}" with:), string
end