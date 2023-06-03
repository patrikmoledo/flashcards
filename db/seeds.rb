puts 'Cleaning development DB'
Deck.destroy_all if Rails.env.development?
Card.destroy_all if Rails.env.development?

puts 'Creating Decks'
deck_ruby = Deck.create!(
  title: 'Ruby Arrays',
  description: 'Ruby methods, iterarion and useful tips')

deck_japanese_greetings = Deck.create!(
  title: 'Japanese Greetings', description: 'Memorize greetings in Japanese'
)

puts 'Creating Cards'
deck_ruby.cards.create!(
  front: 'How can you add a value to the end of an Array',
  back: 'With my_array << 1 or array.push(1)'
)

deck_ruby.cards.create!(
  front: 'How can you delete a specific value in an array',
  back: 'With array.delete_("value") or array.delete_at(0) if it is the first array element for example'
)

deck_ruby.cards.create!(
  front: 'How can you create an array?',
  back: 'with array = [] or array = Array.new'
)

deck_ruby.cards.create!(
  front: 'How can you remove the last item and save it in a variable?',
  back: 'last_array_element = array.pop'
)

deck_japanese_greetings.cards.create!(
  front: 'What おはようございます means?',
  back: 'Means good morning'
)

deck_japanese_greetings.cards.create!(
  front: 'What さよならさよなら means?',
  back: 'Means good bye'
)

deck_japanese_greetings.cards.create!(
  front: 'What おやすみなさい means?',
  back: 'Means good night (before sleeping)'
)

deck_japanese_greetings.cards.create!(
  front: 'What こんばんは means?',
  back: 'Means good night (for greeting at night)'
)

puts "#{Deck.count} decks created, #{Card.count} cards created"
