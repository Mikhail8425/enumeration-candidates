# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Are experienced
# Have 100 or more Github points
# Know at least Ruby or Python
# Applied in the last 15 days
# Are over the age of 17 (18+)

def find(id)
    # Your code Here
    if @candidates.include?(id)
      return id
    else
      return nil
    end
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      return true
    else
      return false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qualified = []
    candidates.each do |candidate|
      if experienced?(candidate) && github_points?(candidate) && languages?(candidate) && age?(candidate) && date_applied?(candidate)
        qualified << candidate
      end
    end
  end
  
  # More methods will go below

  def age_over_17?(candidate)
    if candidate[:age] > 17
      @check = true
    else
      @check = false
    end
  end

  def ordered_by_qualifications (candidates)
    # Your code Here
    candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]}
  end

  