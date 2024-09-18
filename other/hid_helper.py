

def convert(val):
    int_ref = 0x700000000
    int_val = int(val, 16)
    return hex(int_ref | int_val)


grave_accent_and_tilde = "0x35"

keys = {
    "non_us_backslash": "0x64",
    "grave_acc_and_tilde": "0x35",
    "right_command": "0xE7",
    "right_option": "0xE6"
}

for name, value in keys.items():
    print(name, convert(value))
# print(convert(grave_accent_and_tilde))
