json.extract! word, :id, :Word, :Translation, :IDWordType, :IPA, :IDDictionary, :IDUser, :created_at, :updated_at
json.url word_url(word, format: :json)