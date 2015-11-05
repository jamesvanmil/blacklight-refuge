require 'rails_helper'

RSpec.describe Admission, type: :model do
  it 'has a valid factory' do
    expect(build(:admission)).to be_valid
  end

  it { should have_searchable_field(:by_whom_committed) }
  it { should have_searchable_field(:complaint_of_father) }
  it { should have_searchable_field(:complaint_of_mother) }
  it { should have_searchable_field(:complaint_of_father) }
  it { should have_searchable_field(:date) }
  it { should have_searchable_field(:disposal) }
  it { should have_searchable_field(:for_what_committed) }
  it { should have_searchable_field(:history_number) }
  it { should have_searchable_field(:no_of_times_in_refuge) }
  it { should have_searchable_field(:no_of_reader) }
  it { should have_searchable_field(:age) }
  it { should have_searchable_field(:alias) }
  it { should have_searchable_field(:gender) }
  it { should have_searchable_field(:name) }
  it { should have_searchable_field(:whereborn_city) }
  it { should have_searchable_field(:whereborn_city) }
  it { should have_searchable_field(:whereborn_city) }
  it { should have_searchable_field(:religion) }
  it { should have_searchable_field(:parentage) }
  it { should have_searchable_field(:appearance_bad) }
  it { should have_searchable_field(:appearance_bad) }
  it { should have_searchable_field(:can_read) }
  it { should have_searchable_field(:can_write) }
  it { should have_searchable_field(:father_drinks) }
  it { should have_searchable_field(:father_living) }
  it { should have_searchable_field(:had_regular_work) }
  it { should have_searchable_field(:has_step_father) }
  it { should have_searchable_field(:has_step_mother) }
  it { should have_searchable_field(:mother_drinks) }
  it { should have_searchable_field(:mother_drinks) }
  it { should have_searchable_field(:played_truant) }
  it { should have_searchable_field(:swears) }
  it { should have_searchable_field(:uses_liquour) }
  it { should have_searchable_field(:uses_tobacco) }
  it { should have_searchable_field(:id) }
  it { should have_searchable_field(:image_no) }
end
