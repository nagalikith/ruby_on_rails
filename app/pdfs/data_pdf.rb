class DataPdf < Prawn::Document
    def initialize(club)
        super(top_margin: 70)
        @club_data = club
        @club_info = club[1]
        %i[center].each do |position|
            image "#{Rails.root}/app/assets/images/logo-small.png" , position: position
        end
        text "\n"
        text "Club Club Data & Statistics", size: 25, style: :bold
        line_items
    end

    def line_items
        move_down 20
        table(line_item_rows)
    end
    
    def line_item_rows
        [["Club Name","Post code","males", "females", "lowerage", "upperage", "disability", "ethnicity", "mentalhealth",  "depravation", "drugsandabs", "neets"]]+
        @club_data.map do |item|
            [item.name,item.postcode]
        end
    end

end
 