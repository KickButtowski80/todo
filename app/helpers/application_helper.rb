module ApplicationHelper
    
    def completed?(list)
        if list.status == 'low'
            'table-secondary'
        elsif list.status == 'medium'
            'table-primary'
        elsif list.status == 'high'
            'table-warning'
        else
            'table-danger'
        end        
    end
end
