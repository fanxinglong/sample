require 'spec_helper'

describe "StaticPages" do
  
  describe "首页" do
      it "应该有内容'sample'" do
        visit '/static_pages/home'
        expect(page).to have_content('sample')
      end
      
      it "应该有标题'首页'" do
            visit '/static_pages/home'
            expect(page).to have_title("示例程序 | 首页")
      end
  end
  
  describe "帮助" do
    it "应该有内容'帮助'" do
      visit '/static_pages/help'
      expect(page).to have_content('帮助')
    end
    
    it "应该有标题'帮助'" do
          visit '/static_pages/help'
          expect(page).to have_title("示例程序 | 帮助")
    end
  end
  
  describe "帮助" do
      it "应该有内容'关于我们'" do
        visit '/static_pages/about'
        expect(page).to have_content('关于我们')
      end
      
      it "应该有标题'关于我们'" do
            visit '/static_pages/about'
            expect(page).to have_title("示例程序 | 关于我们")
      end
    end
  
end
