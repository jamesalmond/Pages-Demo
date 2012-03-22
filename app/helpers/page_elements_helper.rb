module PageElementsHelper
  def page_element_fields_for(element, form)
    render :partial => "page_elements/forms/#{element.class.model_name.underscore}", :locals => {:element => element, :form => form}
  end
  def render_page_element(element)
    render :partial => "page_elements/views/#{element.class.model_name.underscore}", :locals => {:element => element}
  end
end
