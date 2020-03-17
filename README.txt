PACKAGES REQUIRED: bash, cp, gpg, tar, srm

    Before you use: Put the scripts into their own directory. Create a folder named exactly "Data" in the same directory as the scripts, and then do the exact same, but with a folder named "Backup".

    Put all your data you want to be secured in the Data folder. If you ever fuck something up, you can go into your backups folder and replace the active Data.tar.gz.gpg with one of those. Feel free to delete the backups you don't need however.
    Whenever you want to secure your data, execute enc.sh. DO NOT MISTYPE YOUR PASSWORD (You won't be able to decrypt your files if you don't know what your password is!). Then, whenever you want to access your data again, execute dec.sh.
    These vaults are completely self-contained. You can have as many of them as you like, and can even put a vault inside a vault. The only thing that drives it are the two scripts and their backing packages.
    Feel free to make any changes you like to the scripts. I built them mostly to fit my own computer, though I tried to make them as general as possible. Also feel free to make any PRs if you see anything that could be changed.
    
    Cheers -Soraishi
