# CrackStation, a Decrypter Implementation

### Current stable version: `1.1.0`

## Overview

This is a Swift project for decrypting/cracking any single, double or three character password which matches the regex **[A-Za-z0-9?!]{1,3}**. This will only crack unsalted hashes.

for eg: Provide a Hash for `aa`, `Ka`, `!!!`, `A5?`, `b` and it will decrypt the hash and provide you the correct encypted output.

## Mission Statement

This is a public library and can be used by anyone to test if the passwrod used by them or user of their product is using a combination of very easy password and have them change is if their password is decrypted by this implementation.

## Installation

- You can drag and drop this package into your current package to use as a dependency. 
- Add this package in the Framework, Libraries and Embedded Content in your Xcode project.

If you are added as a colaborator you can also add it with this method:

- In your `Package.swift` add 

```   dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:upanshu21/CrackStation.git", from: "1.1.0")
    ],
```

- In your target add

```
        .target(
            name: "CrackStationWrapper",
            dependencies: [
                "CrackStation"
            ]),
```
            
## Usage

- You can import the CrackStation module and instantiate the CrackStation class
- Use the instance to call the **decrypt(shaHash: String)** function which takes hash in String form as parameter.
- The **decrypt(shaHash: String)** function will return a single character after decrypting the hash. If the hash does not belong to a single character matching the regex **[A-Za-z0-9?!]{1,3}**, it will return nil.

Check the below code to see how you can import the module and use the **decrypt(shaHash: String)** function.

```
import CrackStation

class DemoClass {

    public func justAFunctionTocheckPackageImport() throws {
        
        let importInstance = CrackStation();
        print(importInstance.decrypt(shaHash: "put your hash here"))
    }

}
```

## Author 

Upanshu Chaudhary
