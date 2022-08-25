require "application_system_test_case"

class ClasseDisciplinasTest < ApplicationSystemTestCase
  setup do
    @classe_disciplina = classe_disciplinas(:one)
  end

  test "visiting the index" do
    visit classe_disciplinas_url
    assert_selector "h1", text: "Classe disciplinas"
  end

  test "should create classe disciplina" do
    visit classe_disciplinas_url
    click_on "New classe disciplina"

    fill_in "Disciplina", with: @classe_disciplina.disciplina_id
    fill_in "Professor", with: @classe_disciplina.professor_id
    fill_in "Sala", with: @classe_disciplina.sala_id
    click_on "Create Classe disciplina"

    assert_text "Classe disciplina was successfully created"
    click_on "Back"
  end

  test "should update Classe disciplina" do
    visit classe_disciplina_url(@classe_disciplina)
    click_on "Edit this classe disciplina", match: :first

    fill_in "Disciplina", with: @classe_disciplina.disciplina_id
    fill_in "Professor", with: @classe_disciplina.professor_id
    fill_in "Sala", with: @classe_disciplina.sala_id
    click_on "Update Classe disciplina"

    assert_text "Classe disciplina was successfully updated"
    click_on "Back"
  end

  test "should destroy Classe disciplina" do
    visit classe_disciplina_url(@classe_disciplina)
    click_on "Destroy this classe disciplina", match: :first

    assert_text "Classe disciplina was successfully destroyed"
  end
end
