module PagesHelper

  def order_progress(created_at, shopping_time)
    if shopping_time == "Six Months"
      finish_date = created_at + 6.months
      its_expired?(finish_date, created_at)
    elsif shopping_time == "One Year"
      finish_date = created_at + 12.months
      its_expired?(finish_date, created_at)
    else
      "open_source"
    end
  end

  def its_expired?(finish_date, created_at)
    total_time = (finish_date - created_at).to_i
    left_time = (finish_date - DateTime.now).to_i
    if left_time < 0
      "expire"
    else
      percentage = (left_time * 100) / total_time
      100 - percentage
    end
  end
end
