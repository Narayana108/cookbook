# Say you need to run this script which is not part of your Rails app...
# Do the following:
#
# 1. Assume we put this script file in <Rails app root>/tmp
# 2. $ cd <app dir>
# 3. $ irb -r ./file_name.rb
# 4. ruby > load "#{Rails.root}/tmp/script_to_run_in_rails.rb"
# 5. ruby > MyClass.echo
#    Hello
#    => nil
#
# Just run load again to reload the changes in script_to_run_in_rails.rb.

class MyClass
  def self.echo
    puts('Hello')
  end
end
