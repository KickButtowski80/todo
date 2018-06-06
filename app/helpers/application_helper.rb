module ApplicationHelper
    
    def completed?(list)
        if list.completed
            'table-secondary'
        else
            'table-primary'
        end        
    end
end
