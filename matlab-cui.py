import matlab.engine
eng = matlab.engine.connect_matlab()
try:
    while True:
        try:
            command = input('>> ').strip()
            if command == 'exit':
                break
            if command == '':
                continue
            if '=' in command:
                eng.eval(command,nargout=0)
            else:
                out = eng.eval(command)
                if out != None:
                    print('\n   ',out,end='\n\n')

        except:
            print()
            continue
except:
    eng.quit()
eng.quit()
