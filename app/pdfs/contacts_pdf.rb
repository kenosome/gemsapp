class ContactsPdf < Prawn::Document
  def initialize(contact)
    @contact=contact
    super()
    body_pdf()
  end

  def body_pdf
    text "Contacto"
    text "#{@contact.name}"
    pad(10) do
      image "#{@contact.avatar.file.file}", :width =>64
    end
  end
end