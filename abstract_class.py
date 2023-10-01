from abc import ABC, abstractmethod

#this is abstract class to output information to console, file, etc.
class OutputTarget(ABC):
    
    @abstractmethod
    def output(self, data):
        pass

#output messages to console    
class OutputConsole(OutputTarget):
    def output(self, data):
        print(data)

#output data to file        
class OutputFile(OutputTarget):
    def __init__(self, filename):
        self.filename = filename
    
    def output(self, data):
        with open(self.filename, 'w') as file:
            file.write(data)