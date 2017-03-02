class AdminController < ApplicationController
    
    def codrug
        
    end
    
    def admin_login
        user = Admin.where('admin_id = ? AND admin_pw = ?', params[:adminId], params[:adminPW]).take
        if user != nil
            session['user_id'] = user.id
            flash[:notice] = "로그인 성공"
            redirect_to '/admin/index1'
        else
            redirect_to '/admin/codrug'
        end
    end
    
    def logout
        reset_session
        redirect_to '/home/index'
    end
    
    def adjust
        if session['user_id'] == nil
            redirect_to "/home/index"
        end
        
        @navigator = Navigator.find(1)
        @homepage = Homepage.all
        @aboutweLR = Aboutwe.find(1)
        @aboutweSUB = Aboutwe.where(:id => 2..4)
        @aboutweLang = Aboutwe.where(:id => 5..8)
        @services = Service.all
        @ourteams = Ourteam.all
        @contacts_line = Contact.find(1)
        @contacts_sns = Contact.where(:id => 2..4)
    end
    
    def index1
        if session['user_id'] == nil
            redirect_to "/home/index"
        end
        
        @navigator = Navigator.find(1)
        @homepage = Homepage.all
        @aboutweLR = Aboutwe.find(1)
        @aboutweSUB = Aboutwe.where(:id => 2..4)
        @aboutweLang = Aboutwe.where(:id => 5..8)
        @services = Service.all
        @ourteams = Ourteam.all
        @contacts_line = Contact.find(1)
        @contacts_sns = Contact.where(:id => 2..4)
        
        @menu = Navigator.find(1)
        @home_active = Homepage.find(1)
        @home = Homepage.where.not(:id => 1)
        @sec = Section.all
        @aboutwe_active = Aboutwe.find(2)
        @aboutwe = Aboutwe.where(:id => 2..4)
        @language = Aboutwe.where(:id => 5..8)
        @services = Service.all
        
        # 나중에 반복 없애자
        @ourteams1 = Ourteam.where(:id => 1..4)
        @ourteams2 = Ourteam.where(:id => 5..8)
        @ourteams3 = Ourteam.where(:id => 9..12)
        @contacts = Contact.where(:id => 2..4)
    end
    
    def navi_updt
       a = Navigator.find(1)
       a.navi_name1 = params[:navi1]
       a.navi_name2 = params[:navi2]
       a.navi_name3 = params[:navi3]
       a.navi_name4 = params[:navi4]
       a.navi_name5 = params[:navi5]
       a.navi_name6 = params[:navi6]
       a.navi_name7 = params[:navi7]
       a.navi_name8 = params[:navi8]
       a.save
       
       redirect_to "/admin/index1"
    end
    
    def homepage_new
        uploader = T34Uploader.new
        uploader.store!(params[:hpic])
        image = uploader.url
       
        t = Homepage.new
        t.heading = params[:hheading]
        t.ani_heading = params[:hani]
        t.animated = params[:hanimated]
        t.ani_animated = params[:aani]
        t.button = params[:hbutton]
        t.ani_button = params[:bani]
        t.link = params[:hlink]
        if image != nil
            t.picture_url = image
        end
        t.save
        
        flash[:notice] = "전송완료!"
        redirect_to "/admin/index1"
    end
        

    def homepage_updt
        uploader = T34Uploader.new
        uploader.store!(params[:hpic])
        image = uploader.url
       
        t = Homepage.find(params[:id])
        t.heading = params[:hheading]
        t.ani_heading = params[:hani]
        t.animated = params[:hanimated]
        t.ani_animated = params[:aani]
        t.button = params[:hbutton]
        t.ani_button = params[:bani]
        t.link = params[:hlink]
        if image != nil
            t.picture_url = image
        end
        t.save
       
       flash[:notice] = "전송완료!"
       redirect_to "/admin/index1"
    end
    
    def about_updt
        t = Section.find(1)
        t.section_title = params[:titleSec]
        t.section_content = params[:contentSec]
        t.save
        u = Aboutwe.find(1)
        u.title_left = params[:leftTitle]
        u.title_right = params[:rightTitle]
        u.save
        
        z = Aboutwe.where(:id => 2..4)
        z.each do |q|

            x = Aboutwe.find(q.id)
            
            uploader = T34Uploader.new
            uploader.store!(params["urlPic#{q.id}"])
            image = uploader.url
            
            x.sub_title = params["titleSub#{q.id}"]
            x.sub_content = params["contentSub#{q.id}"]
            x.sub_picture_url = params["urlPic#{q.id}"]
            if image != nil
                x.sub_picture_url = image
            end
            x.save
        end
        
        y = Aboutwe.where(:id => 5..8)
        y.each do |w|
            x = Aboutwe.find(w.id)
            x.language = params["studyLang#{w.id}"]
            x.data_percent = params["langPercent#{w.id}"]
            x.save
        end
        
        flash["notice"] = "수정완료!"
        redirect_to "/admin/index1"
    end
    
    def services_new
        
    end
    
    def services_updt
        t = Section.find(2)
        
        bg_uploader = BackgroundUploader.new
        bg_uploader.store!(params[:backgroundSec])
        bg_image = bg_uploader.url
        
        t.section_title = params[:titleSec]
        t.section_content = params[:contentSec]
        if bg_image != nil
            t.section_background = bg_image
        end
        t.save
        
        u = Service.all
        u.each do |x|
            w = Service.find(x.id)
            
            uploader = T34Uploader.new
            uploader.store!(params["urlPic#{x.id}"])
            image = uploader.url
            
            w.svc_title = params["titleSvc#{x.id}"]
            w.svc_content = params["contentSvc#{x.id}"]
            w.svc_link = params["linkSvc#{x.id}"]
            if image != nil
                w.pic_url = image
            end
            w.save
        end
        redirect_to "/admin/index1"
    end
    
    def team_updt
        t = Section.find(3)
        t.section_title = params[:titleSec]
        t.section_content = params[:contentSec]
        t.save
        
        u = Ourteam.all
        u.each do |o|
            o = Ourteam.find(o.id)
            o.name = params["memberName#{o.id}"]
            o.major = params["memberMajor#{o.id}"]
            o.saying = params["memberSaying#{o.id}"]
            o.img_url = params["faceImgUrl#{o.id}"]
            o.save
        end
        redirect_to "/admin/index1"
    end
    
    def cont_updt
        t = Contact.find(1)
        t.line_num1 = params[:lineNum1]
        t.line_num2 = params[:lineNum2]
        t.line_num3 = params[:lineNum3]
        t.line_num4 = params[:lineNum4]
        t.save
        
        u = Contact.where(:id => 2..4)
        u.each do |o|
            o = Contact.find(o.id)
            o.sns_link = params["snsLink#{o.id}"]
            o.save
        end
        redirect_to "/admin/index1"
        
    end
end