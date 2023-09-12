# testwhile_libs.sh
# source with: source testwhile_libs.sh

# setstopword should be called before the others
# it will be exported to the environment
setstopword(){
   TESTWHILE_STOPWORD=$1
   export TESTWHILE_STOPWORD
}

# Check that STOPWORD is set
teststopword(){
if [[ "x$TESTWHILE_STOPWORD" == '' ]]; then
     echo "Error. setstopword not set. Exiting..."
     exit 1
  fi
}

# Function to ask for input
askinput(){
  teststopword 
  echo "Input variable value ($TESTWHILE_STOPWORD to exit) "
  read var1
}

# Function to reverse words
reverseword(){
  TESTWHILE_WORD=$1
  echo $TESTWHILE_WORD | rev
}

