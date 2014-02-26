module RecipesHelper

  def options_for_select_chefs
    list_options = []
    chefs = Chef.all
    chefs.each do |chef|
      list_options << ["#{chef.name}", chef.id]
    end
    list_options
  end
end


