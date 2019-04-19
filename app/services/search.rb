class Search

  def initialize(query)
    @query = query
  end

  def perform
    if @query != ''
      out = Product.joins(:user)
                .where(['users.email LIKE ? OR products.title LIKE ?',
                      "%#{@query}%", "%#{@query}%"
                    ])
    else
      out = Product.all
    end

    return out
  end

end
