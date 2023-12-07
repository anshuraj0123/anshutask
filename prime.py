def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def print_primes_in_range(start, end):
    primes = [num for num in range(start, end + 1) if is_prime(num)]
    print(primes)

# Example usage
from_value = int(input("Enter start value : "))
to_value = int(input("Enter end value : "))
input_range = [from_value, to_value]
print_primes_in_range(input_range[0], input_range[1])
print_primes_in_range(input_range[0], input_range[1])

