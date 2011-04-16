def render_resource(value,template)
  case content_type
  when :html
    render(template)
  when :xml
    value.to_xml
  when :yaml
    value.to_yaml
  when :json
    value.to_json
  end
end
