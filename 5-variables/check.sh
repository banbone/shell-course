#! /bin/bash
# shellcheck disable=

if [ -z ${FIRST_NAME+x} ]; then 
  echo "❌ FIRST_NAME is not correctly set"; 
else 
  echo "✅ FIRST_NAME is set to '$FIRST_NAME'"; 
fi

if [ -z ${LAST_NAME+x} ]; then 
  echo "❌ LAST_NAME is not correctly set"; 
else 
  echo "✅ LAST_NAME is set to '$LAST_NAME'"; 
fi

if [ -z ${FIRST_NAME+x} ] || [ -z ${LAST_NAME+x} ] ; then
  echo "❌ FULL_NAME is not correctly set";
elif [ "$FULL_NAME" == "$FIRST_NAME $LAST_NAME" ] ; then
  echo "✅ FULL_NAME is set to '$FULL_NAME'";
else
  echo "❌ FULL_NAME is not correctly set";
fi

if [ -z ${TASK_DIRECTORY+x} ] ; then
  echo "❌ TASK_DIRECTORY is not correctly set";
elif [ "$TASK_DIRECTORY" == "$(pwd)" ] ; then
  echo "✅ TASK_DIRECTORY is set to '$TASK_DIRECTORY'";
else
  echo "❌ TASK_DIRECTORY is not correctly set";
fi

if [ -z ${TASK_DIRECTORY+x} ] ; then
  echo "❌ file.txt not created correctly";
elif [ -f "$TASK_DIRECTORY/file.txt" ] ; then
  echo "✅ file.txt exists in '$TASK_DIRECTORY'";
else
  echo "❌ file.txt not created correctly";
fi

