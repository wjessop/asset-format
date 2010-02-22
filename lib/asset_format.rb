ActionView::Helpers.class_eval do
  def rewrite_asset_path_with_timestamp_included(source)    
    File.join(File.dirname(source), rails_asset_id(source), File.basename(source))
  end
  
  alias_method_chain :rewrite_asset_path, :timestamp_included

  def asset_file_path_with_timestamp_included(path)
    asset_file_path_without_timestamp_included(path).sub(/(.*)\/\d+(\/.*\..*)$/, '\1\2')
  end
  alias_method_chain :asset_file_path, :timestamp_included

end
