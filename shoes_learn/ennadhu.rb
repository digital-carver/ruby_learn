Shoes.app do
    para "Ennadhu, Gandhi setthuttaaraa??"
    @yes_button = button "Yes"
    @response_p = para ""
    @yes_button.click do
        @response_p.replace "அய்யகோ! நான் என் செய்வேன்!!"
    end
end


