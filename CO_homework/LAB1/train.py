import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torchvision import transforms, datasets
import struct
import re

def float_to_hex(d):
        return hex(struct.unpack("<L", struct.pack("<f", d))[0])

trainset = datasets.MNIST('./data', train=True, download=True, 
                       transform=transforms.Compose([
                                transforms.ToTensor()
                            ]))
testset = datasets.MNIST('./data', train=False, download=True, 
                       transform=transforms.Compose([
                                transforms.ToTensor()
                            ]))


trainloader  = torch.utils.data.DataLoader(trainset, batch_size=100, shuffle=True, pin_memory=True)
testloader  = torch.utils.data.DataLoader(testset, batch_size=100, shuffle=True, pin_memory=True)


class Net(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(784, 256)
        self.fc2 = nn.Linear(256, 64)
       # self.fc3 = nn.Linear(64, 16)

    def forward(self, x):
        x = F.relu(self.fc1(x))
        #x = F.relu(self.fc2(x))
        x = self.fc2(x)
        return F.log_softmax(x, dim=1)
      
net = Net()
optimizer = optim.Adam(net.parameters(), lr=0.001)

net.train()
epochs = 25
for epoch in range(epochs):
    for data in trainloader:
        X, y = data
        # training process
        optimizer.zero_grad()
        predicted = net(X.view(-1, 784))
        loss = F.nll_loss(predicted, y)
        loss.backward()
        optimizer.step()
    print(f'epoch:{epoch}, loss:{loss}')
"""
model.train()" and "model.eval()" activates and deactivates Dropout and BatchNorm, so it is quite important. 
"with torch.no_grad()" only deactivates gradient calculations, but doesn't turn off Dropout and BatchNorm.
Your model accuracy will therefore be lower if you don't use model.eval() when evaluating the model.
"""




net.eval()

correct = 0
total = 0
with torch.no_grad():
    for data in trainloader:
        X, y = data
        output = net(X.view(-1, 784))
        correct += (torch.argmax(output, dim=1) == y).sum().item()
        total += y.size(0)

print(f'Training data Accuracy: {correct}/{total} = {round(correct/total, 3)}')

# Evaluation the testing data
correct = 0
total = 0
with torch.no_grad():
    for data in testloader:
        X, y = data
        output = net(X.view(-1, 784))
        correct += (torch.argmax(output, dim=1) == y).sum().item()
        total += y.size(0)

print(f'Testing data Accuracy: {correct}/{total} = {round(correct/total, 3)}')



f = open('./parameter.txt','w')
weights = net.state_dict()
#layer 1
for i in range(0,weights['fc1.bias'].shape[0]):
    f.write('{} '.format(re.sub(r'0x','', float_to_hex(weights['fc1.bias'][i]))))
    f.write('\n')
    for weight in weights['fc1.weight'][i]:
        f.write('{} '.format(re.sub(r'0x','', float_to_hex(weight))))
        f.write('\n')

#layer 2
for i in range(0,weights['fc2.bias'].shape[0]):
    f.write('{} '.format(re.sub(r'0x','', float_to_hex(weights['fc2.bias'][i]))))
    f.write('\n')
    for weight in weights['fc2.weight'][i]:
        f.write('{} '.format(re.sub(r'0x','', float_to_hex(weight))))
        f.write('\n')

#layer 3
# for i in range(0,weights['fc3.bias'].shape[0]):
#     f.write('{} '.format(re.sub(r'0x','', float_to_hex(weights['fc3.bias'][i]))))
#     f.write('\n')
#     for weight in weights['fc3.weight'][i]:
#         f.write('{} '.format(re.sub(r'0x','', float_to_hex(weight))))
#         f.write('\n')

# #layer 4
# for i in range(0,weights['fc4.bias'].shape[0]):
#     f.write('{} '.format(re.sub(r'0x','', float_to_hex(weights['fc4.bias'][i]))))
#     f.write('\n')
#     for weight in weights['fc4.weight'][i]:
#         f.write('{} '.format(re.sub(r'0x','', float_to_hex(weight))))
#         f.write('\n')
f.close()
