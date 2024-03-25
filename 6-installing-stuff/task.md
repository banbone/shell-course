## Install the Spinnaker CLI
Let's go chads. Install the Spinnaker cli using your terminal and no package manager!

#### Step 1
Retrieve the binary of the Spinnaker cli with the following command:
```sh
curl -LO https://storage.googleapis.com/spinnaker-artifacts/spin/$(curl -s https://storage.googleapis.com/spinnaker-artifacts/spin/latest)/darwin/arm64/spin
```
> Curl is a powerful command line utility that you can use to send http/https requests. We're using it here to make a `GET` request against the repo that stores the `spin` cli package, which then returns the package we want.

#### Step 2
Edit the file permissions to make it executable. Use what you learned in section 4!

#### Step 3
Put the file into a location in your `$PATH`. Use the command `echo $PATH` to see your full path!

#### Step 4
Flex uncontrollably
