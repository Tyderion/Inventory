require 'test_helper'

class ListitemsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Listitem.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Listitem.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Listitem.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to listitem_url(assigns(:listitem))
  end

  def test_edit
    get :edit, :id => Listitem.first
    assert_template 'edit'
  end

  def test_update_invalid
    Listitem.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Listitem.first
    assert_template 'edit'
  end

  def test_update_valid
    Listitem.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Listitem.first
    assert_redirected_to listitem_url(assigns(:listitem))
  end

  def test_destroy
    listitem = Listitem.first
    delete :destroy, :id => listitem
    assert_redirected_to listitems_url
    assert !Listitem.exists?(listitem.id)
  end
end
