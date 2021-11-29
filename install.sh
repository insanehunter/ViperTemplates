mkdir -p ~/Library/Developer/Xcode/Templates/
rm -rf ~/Library/Developer/Xcode/Templates/VIPER.xctemplate
cp -R VIPER.xctemplate ~/Library/Developer/Xcode/Templates/

if [ $? -eq 0 ]; then
    echo "✅  Template installed succesfully 🎉"
else
    echo "❌  Ooops! Something went wrong 😡"
fi
