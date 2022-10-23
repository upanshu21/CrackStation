# CrackStation POCv1

This is a Swift project for decrypting/cracking any single character password which matches the regex **[A-Za-z0-9]**.

## Steps to use it

- You can drag and drop this package into your current package to use as a dependency. 
- Add this package in the Framework, Libraries and Embedded Content in your Xcode project.

once this is added as the dependency

- You can import the CrackStation module and instantiate the CrackStation class
- Use the instance to call the **crack(password: String)** function which takes hash in String form as parameter.
- The **crack()** function will return a single character after decrypting the hash. If the hash does not belong to a single character matching the regex **[A-Za-z0-9]**, it will return "does not exist" as message.

Check the below code to see how you can import the module and use the **crack()** function.

```
import CrackStation

class DemoClass {

    public func justAFunctionTocheckPackageImport() throws {
        
        let importInstance = CrackStation();
        print(try importInstance.crack(password: "put the hash here"))
    }

}
```
