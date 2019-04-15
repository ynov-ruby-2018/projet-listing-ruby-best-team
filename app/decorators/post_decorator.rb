class ProductDecorator < SimpleDelegator

  def to_product
    {
      title: title,
      created_at: I18n.l(created_at, format: :default),
      user_id: user.id,
      description: description,
      price: price
    }
  end

end
