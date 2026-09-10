class Category:
    def __init__(self, name):
        self.name = name
        self.ledger = []

    def deposit(self, amount, description=''):
        self.ledger.append({'amount': amount, 'description': description})
        
    def withdraw(self, amount, description=''):
        if self.check_funds(amount):
            self.ledger.append({'amount': - amount, 'description': description})
            return True
        return False
        
    def get_balance(self):
        balance = 0
        for item in self.ledger:
            balance += item['amount']
        return balance
        
    def transfer(self, amount, category):
        if self.withdraw(amount, f'Transfer to {category.name}'):
            category.deposit(amount, f'Transfer from {self.name}')
            return True
        return False
        
    def check_funds(self, amount):
        if amount > self.get_balance():
            return False
        return True
        
    def __str__(self):
        output = ''
        output += f"{self.name.center(30, '*')}\n"
        for item in self.ledger:
            description = item['description'][:23]
            amount = item['amount']
            output += f'{description:<23}{amount:>7.2f}\n'
        output += f'Total: {self.get_balance():.2f}'
        return output

def create_spend_chart(categories):
    spent = []

    # Calculate total withdrawals
    total = 0
    for category in categories:
        amount = 0
        for item in category.ledger:
            if item["amount"] < 0:
                amount += -item["amount"]
        spent.append(amount)
        total += amount

    # Percentages rounded down to nearest 10
    percentages = []
    for amount in spent:
        percentages.append(int((amount / total) * 100) // 10 * 10)

    output = "Percentage spent by category\n"

    # Chart body
    for percent in range(100, -1, -10):
        output += f"{percent:>3}|"
        for p in percentages:
            if p >= percent:
                output += " o "
            else:
                output += "   "
        output += " \n"

    # Separator
    output += "    " + "-" * (len(categories) * 3 + 1) + "\n"

    # Vertical names
    max_len = max(len(c.name) for c in categories)

    for i in range(max_len):
        output += "     "
        for category in categories:
            if i < len(category.name):
                output += category.name[i] + "  "
            else:
                output += "   "
        if i != max_len - 1:
            output += "\n"

    return output


food = Category("Food")
food.deposit(1000, "deposit")
food.withdraw(105.55)

clothing = Category("Clothing")
clothing.deposit(500)
clothing.withdraw(33.40)

auto = Category("Auto")
auto.deposit(1000)
auto.withdraw(10)

print(create_spend_chart([food, clothing, auto]))
