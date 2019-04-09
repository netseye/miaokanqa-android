$LOAD_PATH << File.expand_path('../../', __FILE__)
$LOAD_PATH << File.expand_path('../../support', __FILE__)

require 'appium_lib'
require 'spec_helper'
require 'event_helper'

describe 'My' do
    before do
      sleep 3
      swipe_left 4
      click_by_id 'btn_guide_enter'
    end
    
    describe 'mobile login' do
      it "login success" do
        click_by_id 'tvThridTabContainer'
        click_by_id 'ivLoginByPhone'
        fill_in_by_textfield_value '手机号', with:'1381158888'
        fill_in_by_id 'et_login_pass', with:'test'
        click_by_button_name '登录'
        expect(id('tvName').nil?).to eq false
      end
    end
end
