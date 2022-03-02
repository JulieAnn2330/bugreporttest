require "application_system_test_case"

class BugsTest < ApplicationSystemTestCase
  setup do
    @bug = bugs(:one)
  end

  test "visiting the index" do
    visit bugs_url
    assert_selector "h1", text: "Bugs"
  end

  test "creating a Bug" do
    visit bugs_url
    click_on "New Bug"

    fill_in "Browser", with: @bug.browser
    fill_in "Description of issue", with: @bug.description_of_issue
    fill_in "Hardware", with: @bug.hardware
    fill_in "Number of reports", with: @bug.number_of_reports
    fill_in "Priority", with: @bug.priority
    fill_in "Qa team member", with: @bug.qa_team_member
    fill_in "Referred to", with: @bug.referred_to
    fill_in "Report timestamp", with: @bug.report_timestamp
    fill_in "Reported by", with: @bug.reported_by
    fill_in "Reproducible", with: @bug.reproducible
    fill_in "Severity", with: @bug.severity
    fill_in "Title of bug report", with: @bug.title_of_bug_report
    click_on "Create Bug"

    assert_text "Bug was successfully created"
    click_on "Back"
  end

  test "updating a Bug" do
    visit bugs_url
    click_on "Edit", match: :first

    fill_in "Browser", with: @bug.browser
    fill_in "Description of issue", with: @bug.description_of_issue
    fill_in "Hardware", with: @bug.hardware
    fill_in "Number of reports", with: @bug.number_of_reports
    fill_in "Priority", with: @bug.priority
    fill_in "Qa team member", with: @bug.qa_team_member
    fill_in "Referred to", with: @bug.referred_to
    fill_in "Report timestamp", with: @bug.report_timestamp
    fill_in "Reported by", with: @bug.reported_by
    fill_in "Reproducible", with: @bug.reproducible
    fill_in "Severity", with: @bug.severity
    fill_in "Title of bug report", with: @bug.title_of_bug_report
    click_on "Update Bug"

    assert_text "Bug was successfully updated"
    click_on "Back"
  end

  test "destroying a Bug" do
    visit bugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bug was successfully destroyed"
  end
end
