require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/result' do
    erb :result
  end
  post '/result' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    # puts answer
    # return answer
       if answer == "ADI"
      foundName="Lancôme Teint Idole Ultra Longwear Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>" 
      descrip="#{foundName} is priced at $47 at Sephora" 
      img="https://img.makeupalley.com/hwthumb/980/980/1_1_8_1_3210237.JPG"
      url="https://www.sephora.com/product/teint-idole-ultra-24h-long-wear-foundation-P308201"
    
    elsif answer == "AEI"
      foundName="DIOR Forever Perfect Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $52 at Sephora"
      img="https://media1.popsugar-assets.com/files/thumbor/6xUGvKWh3Zz7hFAWhtWqmz6T0LY/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2018/02/26/720/n/43659231/865f901f03ff7d8d_diorskinmaturefoundatin/i/Dior-Diorskin-Forever-Perfect-Foundation.jpg"
      url="https://www.sephora.com/product/diorskin-forever-perfect-foundation-broad-spectrum-35-P405059"
      
    elsif answer == "AFI"
      foundName="Giorgio Armani Beauty Maestro Fusion Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://m.sephora.com/productimages/sku/s1441542-main-Lhero.jpg"
      url="https://www.sephora.com/product/maestro-fusion-makeup-octinoxate-sunscreen-spf-15-P393403"
    
    elsif answer == "ADG"
      foundName="TARTE BB tinted Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $37 at Sephora"
      img="https://pompassion.files.wordpress.com/2015/08/tartebbcream.png?w=700&h=600&crop=1"
      url="https://www.sephora.com/product/bb-tinted-treatment-12-hour-primer-broad-spectrum-spf-30-sunscreen-P377542"  
    
    elsif answer == "AEG"
      foundName="LAURA MERCIER Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="http://www.poorlittleitgirl.com/wp-content/uploads/2014/04/Poor-Little-It-Girl-Laura-Mercier-Oil-Free-Tinted-Moistureizer.png"
      url="https://www.sephora.com/product/tinted-moisturizer-broad-spectrum-P1099363"
    
    elsif answer == "AFG"
      foundName="NARS Pure Radiant Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"
      url="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"  
      
    elsif answer == "ADH"
      foundName="DIOR Airflash Spray Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $62 at Sephora"
      img="https://images.prod.meredith.com/product/60ba0bd7d961eae97cf796a26cf38dbe/1524890841906/l/dior-dior-airflash-spray-foundation-600-mocha-2-3-oz-70-ml"
      url="https://www.sephora.com/product/diorskin-airflash-spray-foundation-P104914"
    
    elsif answer == "AEH"
      foundName="Giorgio Armani Beauty Luminous Silk Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://cdn.influenster.com/media/product/image/armani.jpg.750x750_q85ss0_progressive.jpg"
      url="https://www.sephora.com/product/luminous-silk-foundation-P393401"  
      
    elsif answer == "AFH"
      foundName="Dr.Jart and Premium Beauty Balm"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $39 at Sephora"
      img="https://www.sephora.com/productimages/sku/s1327915-main-zoom.jpg"
      url="https://www.sephora.com/product/premium-beauty-balm-spf-45-P285403"
    
    elsif answer == "BDG"
      foundName="Clinique Superbalanced Silk Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $27 at Sephora"
      img="https://www.clinique.co.uk/media/export/cms/spp_related_content/SuperbalancedSilk_Superbalanced_M35.jpg"
      url="https://www.sephora.com/product/superbalanced-silk-makeup-broad-spectrum-15-P411552" 
      
    elsif answer == "BEG"
      foundName="Tarte Amazonian Clay BB Tinted"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://static-reg.lximg.com/images/product_images/zoom_12694_Tarte_WEB_1630862ccf0c364a80ed809bacae44b2d933f896_1523777105.png"
      url="https://www.sephora.com/product/amazonian-clay-bb-tinted-moisturizer-broad-spectrum-spf-20-sunscreen-P67617"
    
    elsif answer == "BFG"
      foundName="NARS Pure Radiant Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"
      url="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"  
      
    elsif answer == "BDH"
      foundName="DIOR Airflash Spray Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $62 at Sephora"
      img="https://images.prod.meredith.com/product/60ba0bd7d961eae97cf796a26cf38dbe/1524890841906/l/dior-dior-airflash-spray-foundation-600-mocha-2-3-oz-70-ml"
      url="https://www.sephora.com/product/diorskin-airflash-spray-foundation-P104914"
    
    elsif answer == "BEH"
      foundName="Smashbox Studio Skin 15 Hour Hydrating Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://beauty411.net/wp-content/uploads/2016/09/Smashbox-Studio-Skin-15-Hour-Foundation.jpg"
      url="https://www.sephora.com/product/studio-skin-15-hour-wear-foundation-P292403"  
      
    elsif answer == "BFH"
      foundName="NARS Sheer Glow Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $47 at Sephora"
      img="https://78.media.tumblr.com/3c6acd4c412e92416d50e18a37ec5698/tumblr_njljx1rmkt1qesrs5o1_500.jpg"
      url="https://www.sephora.com/product/sheer-glow-foundation-P247355"
    
    elsif answer == "BDI"
      foundName="Bareminerals BarePro Performance Wear Liquid Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $34 at Sephora"
      img="http://cdn8.bigcommerce.com/s-l36s8/images/stencil/1280x1280/products/2774/3464/Screen_Shot_2017-09-21_at_10.55.51_AM__56022.1506017828.png?c=2"
      url="https://www.sephora.com/product/barepro-performance-wear-liquid-foundation-broad-spectrum-spf-20-P421001"
      
      elsif answer == "BEI"
      foundName="Clinique Beyond Perfecting Foundation and Concealer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $29 at Sephora"
      img="http://1.bp.blogspot.com/-SkP6MsRGeQw/VmnwIRKUGTI/AAAAAAAAAl8/HC2CnWDr2AQ/s1600/Clinique-Beyond-Perfecting-foundation-review.jpg"
      url="https://www.sephora.com/product/beyond-perfecting-foundation-concealer-P393325" 
      
    elsif answer == "BFI"
      foundName="NARS All Day Luminous Weightless Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $49 at Sephora"
      img="http://sidewalkhustle.com/wp-content/uploads/2015/02/10/NARS-All-Day-Luminous-Weightless-Foundation.png"
      url="https://www.sephora.com/product/all-day-luminous-weightless-foundation-P393658"
    
    elsif answer == "CDG"
      foundName="Clinique Superbalanced Silk Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $27 at Sephora"
      img="https://www.clinique.co.uk/media/export/cms/spp_related_content/SuperbalancedSilk_Superbalanced_M35.jpg"
      url="https://www.sephora.com/product/superbalanced-silk-makeup-broad-spectrum-15-P411552"  
      
    elsif answer == "CEG"
      foundName="Makeup Forever Ultra HD Perfector Skin Tint"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://cdn.influenster.com/media/product/image/po.18559.jpg.750x750_q85ss0_progressive.jpg"
      url="https://www.sephora.com/product/ultra-hd-perfector-P428675"
    
    elsif answer == "CFG"
      foundName="Laneige BB Cushion Hydra Radiance"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://images.ctfassets.net/mk0gyd3cqdg6/6LNIA7RSHCyU8eUMscYuMq/99571210a0135b0cd6e3a251d0c6055b/Laneige_BB_Cushion_Hydra_Radiance.png?w=600&h=600&fit=pad&fm=jpg&fl=progressive&bg=white"
      url="https://www.sephora.com/product/bb-cushion-hydra-radiance-P420676"  
      
    elsif answer == "CDH"
      foundName="Too Faced Peach Perfect Comfort Matte Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://www.toofaced.com/dw/image/v2/BBWM_PRD/on/demandware.static/-/Sites-master-catalog/default/dwd15ed843/images/hi-res/Peach%20Perfect%20Foundation_1.png?sw=1200&sh=1200&sm=fit"
      url="https://www.sephora.com/product/peach-perfect-comfort-moisture-matte-foundation-peaches-cream-collection-P422601"
    
    elsif answer == "CEH"
      foundName="Sephora Collection Perfection Mist AirBrush Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $28 at Sephora"
      img="http://2.bp.blogspot.com/-RRSWyilSDpI/UieiSq6uX9I/AAAAAAAAABs/nIiFO1loaEY/s1600/Screen+shot+2013-09-04+at+5.08.55+PM.png"
      url="https://www.sephora.com/product/perfection-mist-airbrush-foundation-P381155"
     
     elsif answer == "CFH"
      foundName="Dr. Jart and Premium Beauty Balm SPF"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $39 at Sephora"
      img="https://www.sephora.com/productimages/sku/s1327915-main-zoom.jpg"
      url="https://www.sephora.com/product/premium-beauty-balm-spf-45-P285403"
      
      elsif answer == "CDI"
      foundName="Makeup Forever Matte velvet Skin foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://www.makeupforever.com/sites/default/files/styles/sku__field_image_main__full/public/sku/%5Bmufe_import%3Asku%5D/image_main/BACKSTAGEBOX_packshot_mattevelvetskin_y375_closed.jpg?itok=gUyO8PsS"
      url="https://www.sephora.com/product/matte-velvet-skin-full-coverage-foundation-P434023"
      
      elsif answer == "CEI"
      foundName="IT Cosmetics Your skin but better CC and Cream"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://www.itcosmetics.co.uk/dw/image/v2/AAQP_PRD/on/demandware.static/-/Sites-itc-master-catalog/default/dwe037adc1/product-images/ITC_0008/IT_CCCream_Medium_WEB.jpg?sw=565&sh=647&sm=fit"
      url="https://www.sephora.com/product/your-skin-but-better-cc-cream-spf-50-P411885"
      
      elsif answer == "CFI"
      foundName="NARS Natural Radiant Longwear Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $49 at Sephora"
      img="https://www.narscosmetics.com/on/demandware.static/-/Library-Sites-NARS-Shared-Library/default/dw27ad9951/images/pdp/module1/999NAC0000065.jpg"
      url="https://www.sephora.com/product/natural-radiant-longwear-foundation-P427301"
      
    else
      puts "Sorry, you didn't complete all of the questions in our quiz."
    end 
    @results=[welcome, foundName, descrip, img, url]
    erb :answer
  end

  # end

post '/results2' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  post '/results3' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

  post '/results4' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  get '/home' do
    erb :home
  end
  
  get '/quiz' do
    erb :index 
  end
  
  get '/fash_and_beaut' do
    erb :fashionbeauty
  end
  
  get '/about_us' do
    erb :about_us
  end
  
  get '/quizzes' do
    erb :quizzes
  end
  
  get '/foundation_quiz' do
    erb :foundation_quiz
  end
  
  get '/lipstick_quiz' do
    erb :lipstick_quiz
  end

  get '/primer_quiz' do
    erb :primer_quiz
  end
  
  get '/skincare_quiz' do
    erb :skincare_quiz
  end







end
