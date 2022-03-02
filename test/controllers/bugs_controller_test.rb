require "test_helper"

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get bugs_url
    assert_response :success
  end

  test "should get new" do
    get new_bug_url
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url, params: { bug: { browser: @bug.browser, description_of_issue: @bug.description_of_issue, hardware: @bug.hardware, number_of_reports: @bug.number_of_reports, priority: @bug.priority, qa_team_member: @bug.qa_team_member, referred_to: @bug.referred_to, report_timestamp: @bug.report_timestamp, reported_by: @bug.reported_by, reproducible: @bug.reproducible, severity: @bug.severity, title_of_bug_report: @bug.title_of_bug_report } }
    end

    assert_redirected_to bug_url(Bug.last)
  end

  test "should show bug" do
    get bug_url(@bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_url(@bug)
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { browser: @bug.browser, description_of_issue: @bug.description_of_issue, hardware: @bug.hardware, number_of_reports: @bug.number_of_reports, priority: @bug.priority, qa_team_member: @bug.qa_team_member, referred_to: @bug.referred_to, report_timestamp: @bug.report_timestamp, reported_by: @bug.reported_by, reproducible: @bug.reproducible, severity: @bug.severity, title_of_bug_report: @bug.title_of_bug_report } }
    assert_redirected_to bug_url(@bug)
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug)
    end

    assert_redirected_to bugs_url
  end
end
