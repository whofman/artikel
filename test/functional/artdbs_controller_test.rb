require 'test_helper'

class ArtdbsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Artdb.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Artdb.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Artdb.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to artdb_url(assigns(:artdb))
  end
  
  def test_edit
    get :edit, :id => Artdb.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Artdb.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Artdb.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Artdb.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Artdb.first
    assert_redirected_to artdb_url(assigns(:artdb))
  end
  
  def test_destroy
    artdb = Artdb.first
    delete :destroy, :id => artdb
    assert_redirected_to artdbs_url
    assert !Artdb.exists?(artdb.id)
  end
end
