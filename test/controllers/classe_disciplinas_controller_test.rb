require "test_helper"

class ClasseDisciplinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classe_disciplina = classe_disciplinas(:one)
  end

  test "should get index" do
    get classe_disciplinas_url
    assert_response :success
  end

  test "should get new" do
    get new_classe_disciplina_url
    assert_response :success
  end

  test "should create classe_disciplina" do
    assert_difference("ClasseDisciplina.count") do
      post classe_disciplinas_url, params: { classe_disciplina: { disciplina_id: @classe_disciplina.disciplina_id, professor_id: @classe_disciplina.professor_id, sala_id: @classe_disciplina.sala_id } }
    end

    assert_redirected_to classe_disciplina_url(ClasseDisciplina.last)
  end

  test "should show classe_disciplina" do
    get classe_disciplina_url(@classe_disciplina)
    assert_response :success
  end

  test "should get edit" do
    get edit_classe_disciplina_url(@classe_disciplina)
    assert_response :success
  end

  test "should update classe_disciplina" do
    patch classe_disciplina_url(@classe_disciplina), params: { classe_disciplina: { disciplina_id: @classe_disciplina.disciplina_id, professor_id: @classe_disciplina.professor_id, sala_id: @classe_disciplina.sala_id } }
    assert_redirected_to classe_disciplina_url(@classe_disciplina)
  end

  test "should destroy classe_disciplina" do
    assert_difference("ClasseDisciplina.count", -1) do
      delete classe_disciplina_url(@classe_disciplina)
    end

    assert_redirected_to classe_disciplinas_url
  end
end
