import os
import re

pathLog = r'C:\Users\Lewis\Desktop\draw\.log&result\.log' #pathLog为log文件夹的路径
pathTxt = r'C:\Users\Lewis\Desktop\draw\.log&result\result'#pathTxt为筛选结果txt文件夹的路径
fileList = os.listdir(pathLog)

for file in fileList:
    f = open(pathLog + '\\' + file, 'r', encoding='ANSI')
    lines = f.readlines()
    lineList = []
    # matchPattern = re.compile(r'Epoch(val)')
    i = 0
    linesNum = len(lines)
    while 1:
        line = lines[i]
        # print(i)
        if line is None and i != linesNum - 1:
            print("Read file Error")
            break
        elif i > linesNum - 1:
            break
        # elif matchPattern.match(line):
        elif 'Epoch(val)' in line:  # 根据特征字符串找到每个Epoch的结果
            # line = re.sub(r'\r|\t|\n', '', line)#去除\r|\t|\n
            line = line.replace('\t', ',')
            line = re.sub(r' {2,}', " ", line)  # 2个以上的空格变成1个
            line = line.replace(' ', ',')
            line = line.replace(',,', ',')

            # line = re.sub(r'\s', '', line) #去除所有空格
            # line.strip()
            # line = line + '\n'
            lineList.append(line)
            if i == linesNum-1:
                break
            else:
                i = i + 1
        else:
            if i == linesNum-1:
                break
            else:
                i = i + 1
                pass
    print(i)
    f.close()

    filename = file[:file.find('.')] + '.txt'
    newf = open(pathTxt + '\\' + filename, 'w', encoding='UTF-8')
    newf.write("mAP,bbox_loss,loss" + '\n')
    n = 0
    sum = len(lineList)
    while 1:
        varline = lineList[n].split(',')[-4:]
        if n % 2 == 0:
            newf.write(varline[1] + ',')
        else:
            newf.write(varline[1] + ',' + varline[3])
        if n == sum - 1:
            break
        n = n + 1
    #newf.writelines(lineList)
    newf.close()

    print(file[:file.find('.')] + " has processed successfully")

print("\nDone...")