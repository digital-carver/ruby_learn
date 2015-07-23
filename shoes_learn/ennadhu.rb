Shoes.app do
    stack do
        flow do
            para "Ennadhu, Gandhi setthuttaaraa??"
            @yes_button = button "Yes"
        end
        @response_p = para ""
    end
    @yes_button.click do
        @response_p.replace "அய்யகோ! நான் என் செய்வேன்!!"
    end
end


