module QuestionsHelper
  def answer_cache_key_of(answer)
    "answer-#{answer.id}-#{answer.updated_at}"
  end
end
