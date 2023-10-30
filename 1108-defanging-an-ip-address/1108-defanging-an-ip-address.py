class Solution:
    def defangIPaddr(self, address: str) -> str:
        array = address.split(".")
        new_address = "[.]".join(array)
        return new_address                     
                                 