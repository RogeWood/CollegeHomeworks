import re

print("國立鳳山高級中學")

s = input("輸入 email: ")

emailFormat = re.compile(r'\w+\@[a-z]{2,3}.')

result = emailFormat.findall(s)

if result and "ccu.edu.tw" in s:
    print("中正大學信箱")
else:
    print("錯誤網域")
