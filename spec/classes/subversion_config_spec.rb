require 'spec_helper'
 
describe 'subversion_config', :type => 'class' do
    
  context "Should include subversion service and initiate subversion repos" do
    let(:params) {{
    :create_repos => { 'repo1' => {
      'path'=> '/tmp/repo1'
      }
    }
    }}
  
    it do
      should contain_class('subversion')
      should contain_subversion__svnrepo('repo1').with_path('/tmp/repo1')
    end
  
  end
end
