module StaticPageHelper
  def question_cache_key_of(question)
    "questoin-#{question.id}-#{question.updated_at}"
  end
end
