def hanoi_solver(n):
    rods = {
        'A': list(range(n, 0, -1)),
        'B': [],
        'C': []
    }
    
    moves = []
    
    def record_state():
        moves.append(f"{rods['A']} {rods['B']} {rods['C']}")
    
    record_state()
    
    def move_disks(disks, source, target, auxiliary):
        if disks == 1:
            rods[target].append(rods[source].pop())
            record_state()
            return
        
        move_disks(disks - 1, source, auxiliary, target)
        rods[target].append(rods[source].pop())
        record_state()
        move_disks(disks - 1, auxiliary, target, source)
    
    move_disks(n, 'A', 'C', 'B')
    
    return "\n".join(moves)
