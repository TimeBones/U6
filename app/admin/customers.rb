ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :note, :image

  form do |f|
    f.semantic_errors # erros on :base
    f.inputs          # builds and inpuir field for every attribute
    # adds an input field and option to upload a file
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
    end
    f.actions         # adds the 'submit' and 'cancel' buttons
  end
end
