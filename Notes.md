### For key generation
ssh-keygen -t ed25519 -f ssh/id_ed25519
### If installing onto real machines instead of docker ones, the ssh/x.pub key should be copied to them via
ssh-copy-id -i /ssh/x.pub <Target IP>
