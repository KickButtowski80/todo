module ApplicationHelper
    
    def completed?(list)
        if list.completed           
            'table-dark'
        elsif list.status == 'low'
            'table-secondary'
        elsif list.status == 'medium'
            'table-primary'
        elsif list.status == 'high'
            'table-warning'
        elsif list.status == 'urgent'
            'table-danger'
        end        
    end
end
