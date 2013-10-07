Given /^I have jokes titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Joke.create!(:title => title)
  end
end
Given /^I have no jokes/ do
  Joke.delete_all
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Joke.count.should == count.to_i
end