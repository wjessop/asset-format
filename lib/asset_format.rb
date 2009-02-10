ActionView::Helpers.class_eval do
  def rewrite_asset_path_with_timestamp_included(source)    
    File.join(File.dirname(source), rails_asset_id(source), File.basename(source))
  end
  
  alias_method_chain :rewrite_asset_path, :timestamp_included
end