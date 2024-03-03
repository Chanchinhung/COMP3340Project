from matplotlib import pyplot as plt
import json
import sys
import argparse
import random 

def parse_args():
    parser = argparse.ArgumentParser(description='Plot validation accuracy over epoches')
    parser.add_argument('--json',nargs='+')
    parser.add_argument('--legend',nargs='+')
    parser.add_argument('--output', default='validation_accuracy_over_epoch.pdf')
    
   
    args = parser.parse_args()
    if len(args.json)!=len(args.legend):
        raise Exception('Number of json files doesnt match with Number of legends provided')
    if not (args.json or args.legend):
        raise Exception('Something missing')
    return args

def main():
    args = parse_args()
    json_logs = args.json[:]
    count = 0
    cm = plt.cm.get_cmap('tab20')
    cm_list = [cm.colors[i] for i in range(len(cm.colors))]

    for i in range(len(json_logs)):
        assert json_logs[i].endswith('.json')
        x_data=[]
        y_data=[]
        with open(f'{json_logs[i]}') as f:
            lines = f.readlines()
            for x in lines: 
                dictionary = json.loads(x)
                try:
                    if dictionary['mode']=='val':
                        x_data.append(dictionary['epoch'])
                        y_data.append(dictionary['accuracy_top-1'])
                except:
                    continue

        '''r = random.uniform(0.5, 0.8)
        b = random.uniform(0.5, 0.8)
        g = random.uniform(0.5, 0.8)
        color = (r, g, b)
        plt.plot(x_data,y_data,color=color,label=args.legend[i])'''
        if i<20:
            plt.plot(x_data,y_data,color=cm_list[i],label=args.legend[i])
        else:
            raise Exception('Max number of lines are 20')
    
    plt.legend()
    plt.xlabel('Number of epoch')
    plt.ylabel('Validation accuracy')
    plt.savefig(str(args.output[:]))
    plt.show()



if __name__ == "__main__":
    main()
