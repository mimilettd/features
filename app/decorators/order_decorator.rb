class OrderDecorator < Draper::Decorator
  delegate_all
  decorates_association :customer

  def created_at
    helpers.content_tag :span, class: 'time' do
     object.created_at.strftime("%m/%d/%y")
    end
  end

end
