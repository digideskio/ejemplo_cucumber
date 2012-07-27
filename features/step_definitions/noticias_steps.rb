# encoding: UTF-8

Dado /^(No )?Existe el canal "(.*?)"$/ do |negative, name|
  if negative
    Channel.destroy name
  else
    FactoryGirl.create :channel, name: name
  end
end

Dado /^Voy a la página "(.*?)"$/ do |page|
  url = url_for_page(page)
  visit url
end

Dado /^Lleno el campo "(.*?)" con "(.*?)"$/ do |field, content|
  fill_in field, with: content
end

Cuando /^Presiono el botón "(.*?)"$/ do |name|
  click_button name
end

Entonces /^El email "(.*?)" está suscripto a "(.*?)"$/ do |email, channel|
  channel = Channel.find_by_name(channel)
  subscription = channel.subscriptions.find_by_email(email)
  subscription.should be
end

Entonces /^Veo el mensaje "(.*?)"$/ do |message|
  page.body.should =~ /#{message}/
end
